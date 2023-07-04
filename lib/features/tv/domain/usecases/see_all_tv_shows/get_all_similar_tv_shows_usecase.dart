import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tmda/core/error/failure.dart';
import 'package:tmda/features/tv/domain/entities/tv_show.dart';
import 'package:tmda/features/tv/domain/repositories/tv_shows_repository.dart';

@lazySingleton
class GetAllSimilarTvShowsUseCase {
  final TvShowsRepository _tvShowsRepository;
  const GetAllSimilarTvShowsUseCase(this._tvShowsRepository);

  Future<Either<Failure, List<TvShow>>> call({required int pageNumber, required int tvShowId, required String sessionId}) async{
    return await _tvShowsRepository.getAllSimilarTvShows(pageNumber: pageNumber, tvShowId: tvShowId, sessionId: sessionId);
  }
}
