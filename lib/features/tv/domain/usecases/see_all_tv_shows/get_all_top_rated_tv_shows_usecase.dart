import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tmda/core/error/failure.dart';
import 'package:tmda/features/tv/domain/entities/tv_show.dart';
import 'package:tmda/features/tv/domain/repositories/tv_shows_repository.dart';

@lazySingleton
class GetAllTopRatedTvShowsUseCase {
  final TvShowsRepository _tvShowsRepository;
  const GetAllTopRatedTvShowsUseCase(this._tvShowsRepository);

  Future<Either<Failure, List<TvShow>>> call({required int pageNumber, required String sessionId}) async{
    return await _tvShowsRepository.getAllTopRatedTvShows(pageNumber: pageNumber, sessionId: sessionId);
  }
}
