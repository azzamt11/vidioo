import 'package:chopper/chopper.dart';
import '../config/config.dart';

part 'account_service.chopper.dart';

@ChopperApi(baseUrl: '/account/21424301')
abstract class AccountService extends ChopperService {

  @Get()
  Future<Response> accountDetail();

  @Get(path: '/favorite/movies')
  Future<Response> getFavoriteMovies(
    @Query('language') String language,
    @Query('page') int page,
    @Query('sort_by') String sortBy,
  );

  @Get(path: '/watchlist/movies')
  Future<Response> getWatchlistMovies(
    @Query('language') String language,
    @Query('page') int page,
    @Query('sort_by') String sortBy,
  );

  @Post(path: '/favorite')
  Future<Response> addFavorite(
    @Body() Map<String, dynamic> body,
  );

  @Post(path: '/watchlist')
  Future<Response> addToWatchlist(
    @Body() Map<String, dynamic> body,
  );

  static AccountService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse(Config.apiUrl),
      services: [
        _$AccountService(),
      ],
      converter: const JsonConverter(),
      interceptors: [
        HeadersInterceptor({'Authorization': 'Bearer ${Config.accessToken}'}),
        HttpLoggingInterceptor(),
      ],
      errorConverter: const JsonConverter(),
    );
    return _$AccountService(client);
  }
}
