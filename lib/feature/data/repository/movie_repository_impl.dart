import 'package:chopper/chopper.dart';
import 'package:vidioo/feature/data/model/movie.dart';
import 'package:vidioo/feature/data/repository/movie_repository.dart';
import 'package:vidioo/feature/data/services/movie_service.dart';


class MovieRepositoryImpl implements MovieRepository {
  final MovieService movieService;

  MovieRepositoryImpl({required this.movieService});

  @override
  Future<Response<List<Movie>>> getPopularMovies({
    required String language,
    required int page,
  }) async {
    var response = await movieService.getPopularMovies(
      language,
      page,
    );
    return response.copyWith(body: List<Movie>.from(response.body.map((e) => Movie.fromJson(e))));
  }

  @override
  Future<Response<Movie>> getMovieById(int movieId, String language) async {
    var response = await movieService.getMovieById(
      movieId,
      language,
    );
    return response.copyWith(body: Movie.fromJson(response.body));
  }
}
