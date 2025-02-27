import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/config/router/app_router.dart';
import 'package:tmda/core/util/assets_manager.dart';
import 'package:tmda/core/util/color_manager.dart';
import 'package:tmda/core/util/enums.dart';
import 'package:tmda/core/util/strings_manager.dart';
import 'package:tmda/core/widgets/neon_button.dart';
import 'package:tmda/core/widgets/poster_card.dart';
import 'package:tmda/core/widgets/section_widget.dart';
import 'package:tmda/core/widgets/section_with_see_all.dart';
import 'package:tmda/features/account/presentation/bloc/account/account_bloc.dart';

class TvShowWatchListComponent extends StatelessWidget {
  const TvShowWatchListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [FadeEffect(duration: 400.ms)],
      child: BlocBuilder<AccountBloc, AccountState>(
        buildWhen: (previous, current) =>
            previous.watchListTvShows != current.watchListTvShows,
        builder: (context, state) {
          if (state.watchListTvShows.isEmpty &&
              state.tvShowsWatchListState == BlocState.success) {
            return Animate(
              effects: [FadeEffect(duration: 150.ms)],
              child: Column(
                children: [
                  const SectionWidget(
                    title: StringsManager.tvShowsWatchlistTitle,
                    color: ColorsManager.primaryColor,
                  ),
                  SizedBox(
                    height: 200.h,
                    child: Center(
                      child: NeonButton(
                        child: Text(
                          StringsManager.emptyTvShowsWatchListButtonTitle,
                          style: Theme.of(context).textTheme.titleMedium!,
                        ),
                        onTap: () {
                          context.navigateTo(const TvShowsTabRoute());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Animate(
              effects: [FadeEffect(duration: 150.ms)],
              child: Column(
                children: [
                  SectionWidgetWithSeeAll(
                    title: StringsManager.tvShowsWatchlistTitle,
                    color: ColorsManager.primaryColor,
                    textButtonOnPressed: () {
                      context.pushRoute(
                        AccountSeeAllRoute(
                            watchListType: WatchListType.tvShowWatchList,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 230.h,
                    child: Animate(
                      effects: [FadeEffect(duration: 400.ms)],
                      child: ListView.builder(
                        itemCount: state.watchListTvShows.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final tvShow = state.watchListTvShows[index];
                          return Padding(
                            padding: const EdgeInsets.only(left : 16.0).r,
                            child: PosterCard(
                              width: 140,
                              height: 220,
                              errorImagePath: AssetsManager.errorPoster,
                              imagePath: tvShow.posterPath,
                              title: tvShow.title,
                              releaseYear: tvShow.firstAirDate,
                              rating: tvShow.voteAverage,
                              genres: tvShow.genres,
                              language: tvShow.language,
                              onTap: () {
                                context.pushRoute(
                                  TvDetailsRoute(
                                    tvShowId: tvShow.id,
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
