import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmda/config/router/app_router.dart';
import 'package:tmda/core/util/assets_manager.dart';
import 'package:tmda/core/util/color_manager.dart';
import 'package:tmda/core/util/strings_manager.dart';
import 'package:tmda/core/widgets/details_poster_card.dart';
import 'package:tmda/core/widgets/section_divider.dart';
import 'package:tmda/core/widgets/section_widget.dart';
import 'package:tmda/features/person/presentation/cubit/person_cubit.dart';

class PersonMoviesComponent extends StatelessWidget {
  const PersonMoviesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonCubit, PersonState>(
      builder: (context, state) {
        if (state.personData.movies.isNotEmpty) {
          return Animate(
            effects: [FadeEffect(duration: 250.ms)],
            child: Column(
              children: [
                const SectionWidget(
                  title: StringsManager.movie,
                  color: ColorsManager.primaryColor,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 220.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.personData.movies.length,
                    itemBuilder: (context, index) {
                      final movie = state.personData.movies[index];
                      return Padding(
                        padding: const EdgeInsets.only(left : 16.0).r,
                        child: DetailsPosterCard(
                          imagePath: movie.posterPath,
                          errorImagePath: AssetsManager.errorPoster,
                          title: movie.title,
                          rating: movie.voteAverage,
                          onTap: () {
                            context.pushRoute(
                              MovieDetailsRoute(
                                movieId: movie.id,
                              ),
                            );
                          },
                        ),
                      );
                    },
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
                const SectionWidget(
                  title: StringsManager.movie,
                  color: ColorsManager.primaryColor,
                ),
                Center(
                  child: Text(
                    StringsManager.noPersonMovies,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 20.h),
                const SectionDivider(),
              ],
            ),
          );
        }
      },
    );
  }
}
