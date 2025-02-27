import 'package:equatable/equatable.dart';
import 'package:tmda/features/account/domain/entities/account_states.dart';
import 'package:tmda/features/account/domain/entities/watchlist_genres.dart';

class WatchListMovie extends Equatable {
  final int id;
  final String title;
  final String posterPath;
  final String releaseDate;
  final String language;
  final dynamic voteAverage;
  final int voteCount;
  final List<WatchListGenres> genres;
  final AccountStates accountStates;

  const WatchListMovie({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
    required this.voteCount,
    required this.genres,
    required this.language,
    required this.accountStates,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    posterPath,
    language,
    releaseDate,
    voteAverage,
    voteCount,
    genres,
    accountStates,
  ];

  WatchListMovie copyWith({
    int? id,
    String? title,
    String? posterPath,
    String? backDropPath,
    String? releaseDate,
    String? language,
    dynamic voteAverage,
    List<WatchListGenres>? genres,
    int? voteCount,
    AccountStates? accountStates,
  }) {
    return WatchListMovie(
      id: id ?? this.id,
      title: title ?? this.title,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      language: language ?? this.language,
      voteAverage: voteAverage ?? this.voteAverage,
      genres: genres ?? this.genres,
      voteCount: voteCount ?? this.voteCount,
      accountStates: accountStates ?? this.accountStates,
    );
  }
}
