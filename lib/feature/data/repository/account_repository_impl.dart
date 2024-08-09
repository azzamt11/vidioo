import 'package:chopper/chopper.dart';
import 'package:vidioo/feature/data/model/favorite_movie.dart';
import 'package:vidioo/feature/data/model/user.dart';
import 'package:vidioo/feature/data/model/watchlist_movie.dart';
import 'package:vidioo/feature/data/repository/account_repository.dart';
import 'package:vidioo/feature/data/services/account_service.dart';


class AccountRepositoryImpl implements AccountRepository {
  final AccountService accountService;

  AccountRepositoryImpl({required this.accountService});

  @override
  Future<Response<User>> getAccountDetail() async {
    var response = await accountService.accountDetail();
    return response.copyWith(body: User.fromJson(response.body));
  }

  @override
  Future<Response<List<FavoriteMovie>>> getFavoriteMovies({
    required String language,
    required int page,
    required String sortBy,
  }) async {
    var response = await accountService.getFavoriteMovies(
      language,
      page,
      sortBy,
    );
    return response.copyWith(
        body: List<FavoriteMovie>.from(response.body.map((e) => FavoriteMovie.fromJson(e))));
  }

  @override
  Future<Response<List<WatchlistMovie>>> getWatchlistMovies({
    required String language,
    required int page,
    required String sortBy,
  }) async {
    var response = await accountService.getWatchlistMovies(
      language,
      page,
      sortBy,
    );
    return response.copyWith(
        body: List<WatchlistMovie>.from(response.body.map((e) => WatchlistMovie.fromJson(e))));
  }

  @override
  Future<Response> addFavorite(Map<String, dynamic> body) async {
    return await accountService.addFavorite(body);
  }

  @override
  Future<Response> addToWatchlist(Map<String, dynamic> body) async {
    return await accountService.addToWatchlist(body);
  }
}
