import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tmda/core/error/failure.dart';
import 'package:tmda/features/tv/domain/entities/tv_show.dart';
import 'package:tmda/features/tv/domain/repositories/tv_shows_repository.dart';

@lazySingleton
class GetPopularTvShowsUseCase {
  final TvShowsRepository _tvShowsRepository;
  const GetPopularTvShowsUseCase(this._tvShowsRepository);

  Future<Either<Failure, List<TvShow>>> call(int pageNumber) async{
    return await _tvShowsRepository.getPopularTvShows(pageNumber);
  }
}
