import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';
import 'package:movies_app/movies/domain/entities/recommendation.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/gey_recommendation_useCase.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetail>> getMovieDetails(MovieDetailParameters parameters);
  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameter parameter
      );

}
