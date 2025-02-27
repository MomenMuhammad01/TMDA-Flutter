import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/core/util/assets_manager.dart';
import 'package:tmda/core/util/strings_manager.dart';
import 'package:tmda/core/widgets/neon_play_button.dart';
import 'package:tmda/core/widgets/error_snack_bar.dart';
import 'package:tmda/features/tv/presentation/bloc/tv_show_details/tv_show_details_bloc.dart';
import 'package:tmda/features/tv/presentation/components/tv_details/recommended_tv_shows_component.dart';
import 'package:tmda/features/tv/presentation/components/tv_details/similar_tv_shows_component.dart';
import 'package:tmda/features/tv/presentation/components/tv_details/tv_show_cast_component.dart';
import 'package:tmda/features/tv/presentation/components/tv_details/tv_show_overview_component.dart';
import 'package:tmda/features/tv/presentation/components/tv_details/tv_show_reviews_component.dart';
import 'package:tmda/features/tv/presentation/components/tv_details/tv_show_seasons_component.dart';
import 'package:tmda/features/tv/presentation/components/tv_details/tv_details_poster.dart';

class TvShowDetailsBodyComponent extends StatefulWidget {
  const TvShowDetailsBodyComponent({super.key});

  @override
  State<TvShowDetailsBodyComponent> createState() =>
      _TvShowDetailsBodyComponentState();
}

class _TvShowDetailsBodyComponentState extends State<TvShowDetailsBodyComponent>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  void _scrollListener() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    final tvDetailsBloc = context.read<TvShowDetailsBloc>();
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (tvDetailsBloc.state.animatedHeight != 0) {
        tvDetailsBloc.add(const OnScrollAnimationEvent(animatedHeight: 0));
      }
    }
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward && currentScroll < maxScroll * 0.03) {
      if (tvDetailsBloc.state.animatedHeight == 0) {
        tvDetailsBloc.add(const OnScrollAnimationEvent(animatedHeight: 420));
      }
    }
  }

  @override
  void initState() {
    final tvShowDetailsBloc = context.read<TvShowDetailsBloc>();
    tvShowDetailsBloc.add(GetSeasonEpisodesEvent(
        tvShowId: tvShowDetailsBloc.state.tvShowDetails.id));
    _scrollController = ScrollController()..addListener(_scrollListener);
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvShowDetailsBloc, TvShowDetailsState>(
      buildWhen: (previous, current) =>
          previous.tvShowDetailsState != current.tvShowDetailsState,
      builder: (context, state) {

        return Animate(
          effects: [FadeEffect(duration: 250.ms)],
          child: ListView(
            controller: _scrollController,
            padding: EdgeInsets.zero,
            children: [
              BlocBuilder<TvShowDetailsBloc, TvShowDetailsState>(
                buildWhen: (previous, current) =>
                    previous.animatedHeight != current.animatedHeight,
                builder: (context, state) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.linear,
                    width: MediaQuery.of(context).size.width,
                    height: state.animatedHeight,
                    child: Stack(
                      children: [
                        TvDetailsPoster(
                          height: state.animatedHeight,
                          errorPosterPath: AssetsManager.errorPoster,
                          posterPath: state.tvShowDetails.posterPath,
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 15,
                          child: NeonPlayButton(
                            onTap: () {
                              if (state.tvShowDetails.tvShowVideo.key.isNotEmpty) {
                                context.read<TvShowDetailsBloc>().add(
                                  PlayTvShowVideoEvent(
                                    state.tvShowDetails.tvShowVideo.key,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    errorSnackBar(
                                        errorMessage: StringsManager.movieNoVideosMessage,
                                        context: context,
                                    ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    labelStyle: Theme.of(context).textTheme.titleMedium,
                    onTap: (value) {
                      context.read<TvShowDetailsBloc>()
                          .add(ChangeBodyTabsIndexEvent(_tabController.index));
                      _tabController.animateTo(_tabController.index);
                    },
                    tabs: const [
                      Tab(
                        text: StringsManager.tvDetailsOverviewTab,
                      ),
                      Tab(
                        text: StringsManager.tvDetailsSeasonsTab,
                      )
                    ],
                  ),
                ],
              ),
              BlocBuilder<TvShowDetailsBloc, TvShowDetailsState>(
                builder: (context, state) {
                  return IndexedStack(
                    index: state.bodyTabIndex,
                    children: [
                      Visibility(
                        visible: state.bodyTabIndex == 0,
                        child: Column(
                          children: [
                            const TvShowOverview(),
                            const TvShowCastComponent(),
                            const RecommendedTvShowsComponent(),
                            const SimilarTvShowsComponent(),
                            const TvShowReviewsComponent(),
                            SizedBox(height: 70.h),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: state.bodyTabIndex == 1,
                        child: const TvShowSeasons(),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_scrollListener)
      ..dispose();
    _tabController.dispose();
    super.dispose();
  }
}
