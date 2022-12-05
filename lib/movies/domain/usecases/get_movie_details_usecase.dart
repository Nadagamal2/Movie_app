import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';
import 'package:movies_app/movies/domain/repository/base_movies_Repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetail,MovieDetailParameters>{
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(MovieDetailParameters parameters) async{

    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}
class MovieDetailParameters extends Equatable{
  final int movieId;

  const MovieDetailParameters({required this.movieId});

  @override

  List<Object?> get props =>[movieId];


}