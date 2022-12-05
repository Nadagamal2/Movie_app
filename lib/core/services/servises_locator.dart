import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/dataSource/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_Repository.dart';
import 'package:movies_app/movies/domain/usecases/get_Now_Playing_Movies_Usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_Popular_Movies_Usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_Top_Rated_Movies_Usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/gey_recommendation_useCase.dart';
import 'package:movies_app/movies/presentation/controller/movie_details_bloc.dart';
import 'package:movies_app/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///bloc
    sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
     sl.registerFactory(() => MovieDetailsBloc( sl(),sl()));
    ///useCases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
     sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
     sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));


    ///repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));
    //data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
