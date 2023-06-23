import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tmda/core/error/failure.dart';
import 'package:tmda/features/tv/domain/entities/tv_show/tv_show.dart';
import 'package:tmda/features/tv/domain/repositories/tv_shows_repository.dart';

@lazySingleton
class GetTopRatedTvShowsUseCase {
  final TvShowsRepository tvRepository;
  const GetTopRatedTvShowsUseCase({required this.tvRepository});

  Future<Either<Failure, List<TvShow>>> call(int pageNumber) async{
    return await tvRepository.getTopRatedTvShows(pageNumber);
  }
}
