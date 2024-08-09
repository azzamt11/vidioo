import 'package:chopper/chopper.dart';
import 'package:vidioo/feature/data/model/movie.dart';

abstract class MovieRepository {
  Future<Response<List<Movie>>> getPopularMovies({
    required String language,
    required int page,
  });

  Future<Response<Movie>> getMovieById(int movieId, String language);
}