import 'package:equatable/equatable.dart';
import 'package:vidioo/feature/data/model/favorite_movie.dart';
import 'package:vidioo/feature/data/model/user.dart';
import 'package:vidioo/feature/data/model/watchlist_movie.dart';


abstract class AccountState extends Equatable {
  const AccountState();

  @override
  List<Object?> get props => [];
}

class AccountInitial extends AccountState {}

class AccountLoading extends AccountState {}

class AccountDetailLoaded extends AccountState {
  final User account;

  const AccountDetailLoaded(this.account);

  @override
  List<Object?> get props => [account];
}

class FavoriteMoviesLoaded extends AccountState {
  final List<FavoriteMovie> favoriteMovies;

  const FavoriteMoviesLoaded(this.favoriteMovies);

  @override
  List<Object?> get props => [favoriteMovies];
}

class WatchlistMoviesLoaded extends AccountState {
  final List<WatchlistMovie> watchlistMovies;

  const WatchlistMoviesLoaded(this.watchlistMovies);

  @override
  List<Object?> get props => [watchlistMovies];
}

class AccountError extends AccountState {
  final String message;

  const AccountError(this.message);

  @override
  List<Object?> get props => [message];
}
