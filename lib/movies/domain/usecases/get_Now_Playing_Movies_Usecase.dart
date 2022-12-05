import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

import '../../../core/error/failure.dart';
import '../repository/base_movies_Repository.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie>,NoParameters>{
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure,List<Movie>>> call(NoParameters parameters)async{
    return await baseMoviesRepository.getNowPlayingMovies();

  }


}