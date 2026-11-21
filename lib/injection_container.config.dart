// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tmda/config/router/app_router.dart' as _i342;
import 'package:tmda/core/api/api_consumer.dart' as _i534;
import 'package:tmda/core/api/dio_consumer.dart' as _i103;
import 'package:tmda/core/api/dio_interceptor.dart' as _i855;
import 'package:tmda/core/api/dio_logger.dart' as _i185;
import 'package:tmda/core/util/shared_data_source/local_data_source.dart'
    as _i212;
import 'package:tmda/features/account/data/datasources/account_data_source.dart'
    as _i817;
import 'package:tmda/features/account/data/repositories/account_repository_impl.dart'
    as _i237;
import 'package:tmda/features/account/domain/repositories/account_repository.dart'
    as _i451;
import 'package:tmda/features/account/domain/usecases/account/account_logout_usecase.dart'
    as _i321;
import 'package:tmda/features/account/domain/usecases/account/get_account_details_usecase.dart'
    as _i435;
import 'package:tmda/features/account/domain/usecases/account_movies_watchlist/add_or_remove_movie_from_watch_list_usecase.dart'
    as _i653;
import 'package:tmda/features/account/domain/usecases/account_movies_watchlist/get_all_movies_watchlist_usecase.dart'
    as _i864;
import 'package:tmda/features/account/domain/usecases/account_movies_watchlist/get_movie_watchlist_states_usecase.dart'
    as _i50;
import 'package:tmda/features/account/domain/usecases/account_movies_watchlist/get_movies_watchlist_usecase.dart'
    as _i862;
import 'package:tmda/features/account/domain/usecases/account_tv_shows_watchlist/add_or_remove_tv_show_from_watch_list_usecase.dart'
    as _i381;
import 'package:tmda/features/account/domain/usecases/account_tv_shows_watchlist/get_all_tv_shows_watchlist_usecase.dart'
    as _i204;
import 'package:tmda/features/account/domain/usecases/account_tv_shows_watchlist/get_tv_show_watchlist_states_usecase.dart'
    as _i948;
import 'package:tmda/features/account/domain/usecases/account_tv_shows_watchlist/get_tv_shows_watchlist_usecase.dart'
    as _i515;
import 'package:tmda/features/account/domain/usecases/get_account_session_id_usecase.dart'
    as _i376;
import 'package:tmda/features/account/presentation/bloc/account/account_bloc.dart'
    as _i367;
import 'package:tmda/features/account/presentation/bloc/account_see_all/account_see_all_bloc.dart'
    as _i954;
import 'package:tmda/features/auth/data/datasources/auth_data_source.dart'
    as _i274;
import 'package:tmda/features/auth/data/repositories/auth_repository_impl.dart'
    as _i485;
import 'package:tmda/features/auth/domain/repositories/auth_repository.dart'
    as _i594;
import 'package:tmda/features/auth/domain/usecases/check_user_login_session_usecase.dart'
    as _i853;
import 'package:tmda/features/auth/domain/usecases/user_forget_password_usecase.dart'
    as _i674;
import 'package:tmda/features/auth/domain/usecases/user_login_usecase.dart'
    as _i391;
import 'package:tmda/features/auth/domain/usecases/user_register_usecase.dart'
    as _i1035;
import 'package:tmda/features/auth/presentation/cubit/auth_cubit.dart' as _i120;
import 'package:tmda/features/auth/presentation/cubit/login_cubit.dart'
    as _i593;
import 'package:tmda/features/movie/data/datasources/movies_data_source.dart'
    as _i535;
import 'package:tmda/features/movie/data/repositories/movies_repository_impl.dart'
    as _i379;
import 'package:tmda/features/movie/domain/repositories/movies_repository.dart'
    as _i32;
import 'package:tmda/features/movie/domain/usecases/add_or_remove_movie_from_watch_list_usecase.dart'
    as _i154;
import 'package:tmda/features/movie/domain/usecases/get_movie_states_usecase.dart'
    as _i1055;
import 'package:tmda/features/movie/domain/usecases/get_session_id_usecase.dart'
    as _i647;
import 'package:tmda/features/movie/domain/usecases/movie/get_new_movies_usecase.dart'
    as _i915;
import 'package:tmda/features/movie/domain/usecases/movie/get_now_playing_movies_usecase.dart'
    as _i289;
import 'package:tmda/features/movie/domain/usecases/movie/get_popular_movies_usecase.dart'
    as _i891;
import 'package:tmda/features/movie/domain/usecases/movie/get_top_rated_movies_usecase.dart'
    as _i300;
import 'package:tmda/features/movie/domain/usecases/movie_details/get_movie_details_usecase.dart'
    as _i88;
import 'package:tmda/features/movie/domain/usecases/movie_details/play_movie_video_usecase.dart'
    as _i384;
import 'package:tmda/features/movie/domain/usecases/see_all_movies/get_all_new_movies_usecase.dart'
    as _i263;
import 'package:tmda/features/movie/domain/usecases/see_all_movies/get_all_popular_movies_usecase.dart'
    as _i372;
import 'package:tmda/features/movie/domain/usecases/see_all_movies/get_all_recommended_movies_usecase.dart'
    as _i326;
import 'package:tmda/features/movie/domain/usecases/see_all_movies/get_all_similar_movies_usecase.dart'
    as _i973;
import 'package:tmda/features/movie/domain/usecases/see_all_movies/get_all_top_rated_movies_usecase.dart'
    as _i45;
import 'package:tmda/features/movie/presentation/bloc/movie_details/movie_details_bloc.dart'
    as _i639;
import 'package:tmda/features/movie/presentation/bloc/movies/movies_bloc.dart'
    as _i720;
import 'package:tmda/features/movie/presentation/bloc/see_all_movies/see_all_movies_bloc.dart'
    as _i672;
import 'package:tmda/features/person/data/datasources/person_data_source.dart'
    as _i335;
import 'package:tmda/features/person/data/repositories/person_repository_impl.dart'
    as _i108;
import 'package:tmda/features/person/domain/repositories/person_repository.dart'
    as _i514;
import 'package:tmda/features/person/domain/usecases/get_person_details_usecase.dart'
    as _i461;
import 'package:tmda/features/person/presentation/cubit/person_cubit.dart'
    as _i460;
import 'package:tmda/features/search/data/datasources/search_data_source.dart'
    as _i325;
import 'package:tmda/features/search/data/repositories/search_repository_impl.dart'
    as _i538;
import 'package:tmda/features/search/domain/repositories/search_repository.dart'
    as _i750;
import 'package:tmda/features/search/domain/usecases/get_search_session_id_usecase.dart'
    as _i340;
import 'package:tmda/features/search/domain/usecases/search_for_movie_usecase.dart'
    as _i680;
import 'package:tmda/features/search/domain/usecases/search_for_person_usecase.dart'
    as _i1025;
import 'package:tmda/features/search/domain/usecases/search_for_tv_show_usecase.dart'
    as _i838;
import 'package:tmda/features/search/presentation/bloc/search_bloc.dart'
    as _i392;
import 'package:tmda/features/tv/data/datasources/tv_data_source.dart' as _i632;
import 'package:tmda/features/tv/data/repositories/tv_repository_impl.dart'
    as _i727;
import 'package:tmda/features/tv/domain/repositories/tv_shows_repository.dart'
    as _i884;
import 'package:tmda/features/tv/domain/usecases/add_or_remove_tv_from_watchlist_usecase.dart'
    as _i589;
import 'package:tmda/features/tv/domain/usecases/get_tv_show_states_usecase.dart'
    as _i916;
import 'package:tmda/features/tv/domain/usecases/see_all_tv_shows/get_all_popular_tv_shows_usecase.dart'
    as _i780;
import 'package:tmda/features/tv/domain/usecases/see_all_tv_shows/get_all_recommended_tv_shows_usecase.dart'
    as _i566;
import 'package:tmda/features/tv/domain/usecases/see_all_tv_shows/get_all_similar_tv_shows_usecase.dart'
    as _i612;
import 'package:tmda/features/tv/domain/usecases/see_all_tv_shows/get_all_top_rated_tv_shows_usecase.dart'
    as _i577;
import 'package:tmda/features/tv/domain/usecases/see_all_tv_shows/get_all_tv_shows_airing_today_usecase.dart'
    as _i366;
import 'package:tmda/features/tv/domain/usecases/tv_get_session_key_usecase.dart'
    as _i500;
import 'package:tmda/features/tv/domain/usecases/tv_show_details/get_season_episodes_usecase.dart'
    as _i275;
import 'package:tmda/features/tv/domain/usecases/tv_show_details/get_tv_show_details_usecase.dart'
    as _i756;
import 'package:tmda/features/tv/domain/usecases/tv_show_details/play_tv_show_video_usecase.dart'
    as _i327;
import 'package:tmda/features/tv/domain/usecases/tv_shows/get_popular_tv_shows.dart'
    as _i191;
import 'package:tmda/features/tv/domain/usecases/tv_shows/get_top_rated_tv_shows.dart'
    as _i673;
import 'package:tmda/features/tv/domain/usecases/tv_shows/get_tv_shows_airing_this_week_usecase.dart'
    as _i971;
import 'package:tmda/features/tv/domain/usecases/tv_shows/get_tv_shows_airing_today.dart'
    as _i314;
import 'package:tmda/features/tv/presentation/bloc/see_all_tv_shows/see_all_tv_shows_bloc.dart'
    as _i897;
import 'package:tmda/features/tv/presentation/bloc/tv_show/tv_show_bloc.dart'
    as _i478;
import 'package:tmda/features/tv/presentation/bloc/tv_show_details/tv_show_details_bloc.dart'
    as _i790;
import 'package:tmda/register_module.dart' as _i2;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i342.AppRouter>(() => _i342.AppRouter());
    gh.lazySingleton<_i855.DioInterceptor>(() => _i855.DioInterceptor());
    gh.lazySingleton<_i185.DioLogInterceptor>(() => _i185.DioLogInterceptor());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dioClient);
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => registerModule.localStorage);
    gh.lazySingleton<_i212.LocalDataSource>(
        () => _i212.LocalDataSourceImpl(gh<_i558.FlutterSecureStorage>()));
    gh.lazySingleton<_i534.ApiConsumer>(
        () => _i103.DioApiConsumer(dioClient: gh<_i361.Dio>()));
    gh.lazySingleton<_i632.TvDataSource>(
        () => _i632.TvDataSourceImpl(apiConsumer: gh<_i534.ApiConsumer>()));
    gh.lazySingleton<_i535.MoviesDataSource>(
        () => _i535.MoviesDataSourceImpl(gh<_i534.ApiConsumer>()));
    gh.lazySingleton<_i274.AuthDataSource>(
        () => _i274.AuthDataSourceImpl(gh<_i534.ApiConsumer>()));
    gh.lazySingleton<_i335.PersonDataSource>(
        () => _i335.PersonDataSourceImpl(gh<_i534.ApiConsumer>()));
    gh.lazySingleton<_i817.AccountDataSource>(
        () => _i817.AccountDataSourceImpl(gh<_i534.ApiConsumer>()));
    gh.lazySingleton<_i514.PersonRepository>(
        () => _i108.PersonRepositoryImpl(gh<_i335.PersonDataSource>()));
    gh.lazySingleton<_i325.SearchDataSource>(
        () => _i325.SearchDataSourceIml(gh<_i534.ApiConsumer>()));
    gh.lazySingleton<_i451.AccountRepository>(() => _i237.AccountRepositoryImpl(
          gh<_i817.AccountDataSource>(),
          gh<_i212.LocalDataSource>(),
        ));
    gh.lazySingleton<_i32.MoviesRepository>(() => _i379.MoviesRepositoryImpl(
          gh<_i535.MoviesDataSource>(),
          gh<_i212.LocalDataSource>(),
        ));
    gh.lazySingleton<_i594.AuthRepository>(() => _i485.AuthRepositoryImpl(
          gh<_i274.AuthDataSource>(),
          gh<_i212.LocalDataSource>(),
        ));
    gh.lazySingleton<_i154.AddOrRemoveMovieFromWatchListUseCase>(() =>
        _i154.AddOrRemoveMovieFromWatchListUseCase(
            gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i1055.GetMovieStateUseCase>(
        () => _i1055.GetMovieStateUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i647.GetSessionIdUseCase>(
        () => _i647.GetSessionIdUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i915.GetNewMoviesUseCase>(
        () => _i915.GetNewMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i289.GetNowPlayingMoviesUseCase>(
        () => _i289.GetNowPlayingMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i891.GetPopularMoviesUseCase>(
        () => _i891.GetPopularMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i300.GetTopRatedMoviesUseCase>(
        () => _i300.GetTopRatedMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i88.GetMovieDetailsUseCase>(
        () => _i88.GetMovieDetailsUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i384.PlayMovieVideoUseCase>(
        () => _i384.PlayMovieVideoUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i263.GetAllNewMoviesUseCase>(
        () => _i263.GetAllNewMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i372.GetAllPopularMoviesUseCase>(
        () => _i372.GetAllPopularMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i326.GetAllRecommendedMoviesUseCase>(() =>
        _i326.GetAllRecommendedMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i973.GetAllSimilarMoviesUseCase>(
        () => _i973.GetAllSimilarMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.lazySingleton<_i45.GetAllTopRatedMoviesUseCase>(
        () => _i45.GetAllTopRatedMoviesUseCase(gh<_i32.MoviesRepository>()));
    gh.factory<_i720.MoviesBloc>(() => _i720.MoviesBloc(
          gh<_i289.GetNowPlayingMoviesUseCase>(),
          gh<_i891.GetPopularMoviesUseCase>(),
          gh<_i300.GetTopRatedMoviesUseCase>(),
          gh<_i915.GetNewMoviesUseCase>(),
        ));
    gh.factory<_i639.MovieDetailsBloc>(() => _i639.MovieDetailsBloc(
          gh<_i88.GetMovieDetailsUseCase>(),
          gh<_i647.GetSessionIdUseCase>(),
          gh<_i384.PlayMovieVideoUseCase>(),
          gh<_i154.AddOrRemoveMovieFromWatchListUseCase>(),
          gh<_i1055.GetMovieStateUseCase>(),
        ));
    gh.lazySingleton<_i461.GetPersonDetailsUseCase>(
        () => _i461.GetPersonDetailsUseCase(gh<_i514.PersonRepository>()));
    gh.lazySingleton<_i884.TvShowsRepository>(() => _i727.TvRepositoryImpl(
          tvDataSource: gh<_i632.TvDataSource>(),
          localDataSource: gh<_i212.LocalDataSource>(),
        ));
    gh.lazySingleton<_i750.SearchRepository>(() => _i538.SearchRepositoryImpl(
          gh<_i325.SearchDataSource>(),
          gh<_i212.LocalDataSource>(),
        ));
    gh.lazySingleton<_i853.CheckUserLoginSessionUseCase>(
        () => _i853.CheckUserLoginSessionUseCase(gh<_i594.AuthRepository>()));
    gh.lazySingleton<_i674.UserForgetPasswordUseCase>(
        () => _i674.UserForgetPasswordUseCase(gh<_i594.AuthRepository>()));
    gh.lazySingleton<_i391.UserLoginUseCase>(
        () => _i391.UserLoginUseCase(gh<_i594.AuthRepository>()));
    gh.lazySingleton<_i1035.UserRegisterUseCase>(
        () => _i1035.UserRegisterUseCase(gh<_i594.AuthRepository>()));
    gh.lazySingleton<_i321.AccountLogoutUseCase>(
        () => _i321.AccountLogoutUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i435.GetAccountDetailsUseCase>(
        () => _i435.GetAccountDetailsUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i653.RemoveMovieFromWatchListUseCase>(() =>
        _i653.RemoveMovieFromWatchListUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i864.GetAllMoviesWatchListUseCase>(() =>
        _i864.GetAllMoviesWatchListUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i50.GetMovieWatchListStatesUseCase>(() =>
        _i50.GetMovieWatchListStatesUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i862.GetMoviesWatchListUseCase>(
        () => _i862.GetMoviesWatchListUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i381.RemoveTvShowFromWatchListUseCase>(() =>
        _i381.RemoveTvShowFromWatchListUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i204.GetAllTvShowsWatchListUseCase>(() =>
        _i204.GetAllTvShowsWatchListUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i948.GetTvShowWatchListStatesUseCase>(() =>
        _i948.GetTvShowWatchListStatesUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i515.GetTvShowsWatchListUseCase>(
        () => _i515.GetTvShowsWatchListUseCase(gh<_i451.AccountRepository>()));
    gh.lazySingleton<_i376.GetAccountSessionIdUseCase>(
        () => _i376.GetAccountSessionIdUseCase(gh<_i451.AccountRepository>()));
    gh.factory<_i672.SeeAllMoviesBloc>(() => _i672.SeeAllMoviesBloc(
          gh<_i263.GetAllNewMoviesUseCase>(),
          gh<_i372.GetAllPopularMoviesUseCase>(),
          gh<_i45.GetAllTopRatedMoviesUseCase>(),
          gh<_i326.GetAllRecommendedMoviesUseCase>(),
          gh<_i973.GetAllSimilarMoviesUseCase>(),
          gh<_i154.AddOrRemoveMovieFromWatchListUseCase>(),
          gh<_i1055.GetMovieStateUseCase>(),
          gh<_i647.GetSessionIdUseCase>(),
        ));
    gh.lazySingleton<_i340.GetSearchSessionIdUseCase>(
        () => _i340.GetSearchSessionIdUseCase(gh<_i750.SearchRepository>()));
    gh.lazySingleton<_i680.SearchForMovieUseCase>(
        () => _i680.SearchForMovieUseCase(gh<_i750.SearchRepository>()));
    gh.lazySingleton<_i1025.SearchForPersonUseCase>(
        () => _i1025.SearchForPersonUseCase(gh<_i750.SearchRepository>()));
    gh.lazySingleton<_i838.SearchForTvShowUseCase>(
        () => _i838.SearchForTvShowUseCase(gh<_i750.SearchRepository>()));
    gh.factory<_i460.PersonCubit>(
        () => _i460.PersonCubit(gh<_i461.GetPersonDetailsUseCase>()));
    gh.factory<_i392.SearchBloc>(() => _i392.SearchBloc(
          gh<_i340.GetSearchSessionIdUseCase>(),
          gh<_i838.SearchForTvShowUseCase>(),
          gh<_i680.SearchForMovieUseCase>(),
          gh<_i1025.SearchForPersonUseCase>(),
        ));
    gh.lazySingleton<_i589.AddOrRemoveTvFromWatchListUseCase>(() =>
        _i589.AddOrRemoveTvFromWatchListUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i916.GetTvShowStateUseCase>(
        () => _i916.GetTvShowStateUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i780.GetAllPopularTvShowsUseCase>(
        () => _i780.GetAllPopularTvShowsUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i566.GetAllRecommendedTvShowsUseCase>(() =>
        _i566.GetAllRecommendedTvShowsUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i612.GetAllSimilarTvShowsUseCase>(
        () => _i612.GetAllSimilarTvShowsUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i577.GetAllTopRatedTvShowsUseCase>(() =>
        _i577.GetAllTopRatedTvShowsUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i366.GetAllAiringTodayTvShowsUseCase>(() =>
        _i366.GetAllAiringTodayTvShowsUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i500.TvGetSessionIdUseCase>(
        () => _i500.TvGetSessionIdUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i275.GetSeasonsEpisodesUseCase>(
        () => _i275.GetSeasonsEpisodesUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i756.GetTvShowDetailsUseCase>(
        () => _i756.GetTvShowDetailsUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i327.PlayTvShowVideoUseCase>(
        () => _i327.PlayTvShowVideoUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i191.GetPopularTvShowsUseCase>(
        () => _i191.GetPopularTvShowsUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i673.GetTopRatedTvShowsUseCase>(
        () => _i673.GetTopRatedTvShowsUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i971.GetTvShowsAiringThisWeekUseCase>(() =>
        _i971.GetTvShowsAiringThisWeekUseCase(gh<_i884.TvShowsRepository>()));
    gh.lazySingleton<_i314.GetTvShowsAiringTodayUseCase>(() =>
        _i314.GetTvShowsAiringTodayUseCase(gh<_i884.TvShowsRepository>()));
    gh.factory<_i367.AccountBloc>(() => _i367.AccountBloc(
          gh<_i435.GetAccountDetailsUseCase>(),
          gh<_i862.GetMoviesWatchListUseCase>(),
          gh<_i515.GetTvShowsWatchListUseCase>(),
          gh<_i321.AccountLogoutUseCase>(),
          gh<_i376.GetAccountSessionIdUseCase>(),
        ));
    gh.factory<_i120.AuthCubit>(() => _i120.AuthCubit(
          checkUserLoggedInUseCase: gh<_i853.CheckUserLoginSessionUseCase>(),
          userRegisterUseCase: gh<_i1035.UserRegisterUseCase>(),
        ));
    gh.factory<_i954.AccountSeeAllBloc>(() => _i954.AccountSeeAllBloc(
          gh<_i376.GetAccountSessionIdUseCase>(),
          gh<_i864.GetAllMoviesWatchListUseCase>(),
          gh<_i204.GetAllTvShowsWatchListUseCase>(),
          gh<_i948.GetTvShowWatchListStatesUseCase>(),
          gh<_i381.RemoveTvShowFromWatchListUseCase>(),
          gh<_i50.GetMovieWatchListStatesUseCase>(),
          gh<_i653.RemoveMovieFromWatchListUseCase>(),
        ));
    gh.factory<_i897.SeeAllTvShowsBloc>(() => _i897.SeeAllTvShowsBloc(
          gh<_i500.TvGetSessionIdUseCase>(),
          gh<_i366.GetAllAiringTodayTvShowsUseCase>(),
          gh<_i780.GetAllPopularTvShowsUseCase>(),
          gh<_i577.GetAllTopRatedTvShowsUseCase>(),
          gh<_i566.GetAllRecommendedTvShowsUseCase>(),
          gh<_i612.GetAllSimilarTvShowsUseCase>(),
          gh<_i916.GetTvShowStateUseCase>(),
          gh<_i589.AddOrRemoveTvFromWatchListUseCase>(),
        ));
    gh.factory<_i593.LoginCubit>(() => _i593.LoginCubit(
          userRegisterUseCase: gh<_i1035.UserRegisterUseCase>(),
          userForgetPasswordUseCase: gh<_i674.UserForgetPasswordUseCase>(),
          userLoginUseCase: gh<_i391.UserLoginUseCase>(),
        ));
    gh.factory<_i790.TvShowDetailsBloc>(() => _i790.TvShowDetailsBloc(
          gh<_i756.GetTvShowDetailsUseCase>(),
          gh<_i500.TvGetSessionIdUseCase>(),
          gh<_i275.GetSeasonsEpisodesUseCase>(),
          gh<_i589.AddOrRemoveTvFromWatchListUseCase>(),
          gh<_i327.PlayTvShowVideoUseCase>(),
          gh<_i916.GetTvShowStateUseCase>(),
        ));
    gh.factory<_i478.TvShowsBloc>(() => _i478.TvShowsBloc(
          gh<_i314.GetTvShowsAiringTodayUseCase>(),
          gh<_i971.GetTvShowsAiringThisWeekUseCase>(),
          gh<_i191.GetPopularTvShowsUseCase>(),
          gh<_i673.GetTopRatedTvShowsUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i2.RegisterModule {}
