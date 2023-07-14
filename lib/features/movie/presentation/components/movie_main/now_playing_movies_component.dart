import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/config/router/app_router.dart';
import 'package:tmda/core/util/assets_manager.dart';
import 'package:tmda/core/util/color_manager.dart';
import 'package:tmda/features/movie/presentation/bloc/movies/movies_bloc.dart';
import 'package:tmda/core/widgets/carousel_card.dart';
import 'package:tmda/core/widgets/animated_indicator.dart';

class NowPlayingMoviesComponent extends StatelessWidget {
  const NowPlayingMoviesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            return Stack(
              children: [
                Animate(
                  effects: [FadeEffect(duration: 150.ms)],
                  child: CarouselSlider.builder(
                    itemCount: 4,
                    itemBuilder: (context, index, realIndex) {
                      final nowPlayingMovie = state.nowPlayingMovies[index];
                      if (state.nowPlayingMovies.isNotEmpty) {
                        return CarouselCard(
                          onTap: () {
                            context.pushRoute(MovieDetailsRoute(movieId: nowPlayingMovie.id));
                          },
                          imagePath: nowPlayingMovie.posterPath,
                          errorImagePath: AssetsManager.errorPoster,
                          rating: nowPlayingMovie.voteAverage,
                          title: nowPlayingMovie.title,
                          voteCount: nowPlayingMovie.movieVoteCount,
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                    options: CarouselOptions(
                      autoPlay: false,
                      viewportFraction: 1,
                      height: 410.h,
                      onPageChanged: (index, reason) {
                        context.read<MoviesBloc>().add(ChangeIndicatorIndexEvent(index),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(height: 14.h),
        BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            return AnimatedIndicator(
              currentIndex: state.indicatorIndex,
              dotsCount: 4,
              axisDirection: Axis.horizontal,
              selectedColor: ColorsManager.primaryColor,
              unSelectedColor: Colors.white,
              dotHeight: 10,
              dotWidth: 10,
              selectedDotWidth: 30,
            );
          },
        ),
      ],
    );
  }
}
