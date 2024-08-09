import 'package:chopper/chopper.dart';
import 'package:vidioo/feature/data/model/favorite_movie.dart';
import 'package:vidioo/feature/data/model/user.dart';
import 'package:vidioo/feature/data/model/watchlist_movie.dart';


abstract class AccountRepository {
  Future<Response<User>> getAccountDetail();

  Future<Response<List<FavoriteMovie>>> getFavoriteMovies({
    required String language,
    required int page,
    required String sortBy,
  });

  Future<Response<List<WatchlistMovie>>> getWatchlistMovies({
    required String language,
    required int page,
    required String sortBy,
  });

  Future<Response> addFavorite(Map<String, dynamic> body);

  Future<Response> addToWatchlist(Map<String, dynamic> body);
}
