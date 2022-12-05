import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetail extends Equatable {
  final List<Genres> genres;
  final String backdropPath;

  final int id;
  final String overview;
  final String releaseDate;
  final String title;
  final double voteAverage;
  final int runtime;

  const MovieDetail({
    required this.genres,
    required this.backdropPath,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.runtime,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        genres,
        id,
        overview,
        releaseDate,
        title,
        voteAverage,
        runtime,
      ];
}
