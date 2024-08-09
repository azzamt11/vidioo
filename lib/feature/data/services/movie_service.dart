import 'package:chopper/chopper.dart';
import '../config/config.dart';

part 'movie_service.chopper.dart';

@ChopperApi(baseUrl: '/movie')
abstract class MovieService extends ChopperService {

  @Get(path: '/popular')
  Future<Response> getPopularMovies(
    @Query('language') String language,
    @Query('page') int page,
  );

  @Get(path: '/{movie_id}')
  Future<Response> getMovieById(
    @Path('movie_id') int movieId,
    @Query('language') String language,
  );

  static MovieService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse(Config.apiUrl),  // Use the baseUrl as a string
      services: [
        _$MovieService(),
      ],
      converter: const JsonConverter(),
      interceptors: [
        HeadersInterceptor({'Authorization': 'Bearer ${Config.accessToken}'}), // Remove const
        HttpLoggingInterceptor(),
      ],
      errorConverter: const JsonConverter(),
    );
    return _$MovieService(client);
  }
}
