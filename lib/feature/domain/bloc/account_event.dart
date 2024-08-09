import 'package:equatable/equatable.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();

  @override
  List<Object?> get props => [];
}

class FetchAccountDetail extends AccountEvent {}

class FetchFavoriteMovies extends AccountEvent {
  final String language;
  final int page;
  final String sortBy;

  const FetchFavoriteMovies({
    required this.language,
    required this.page,
    required this.sortBy,
  });

  @override
  List<Object?> get props => [language, page, sortBy];
}

class FetchWatchlistMovies extends AccountEvent {
  final String language;
  final int page;
  final String sortBy;

  const FetchWatchlistMovies({
    required this.language,
    required this.page,
    required this.sortBy,
  });

  @override
  List<Object?> get props => [language, page, sortBy];
}

class AddFavoriteMovie extends AccountEvent {
  final Map<String, dynamic> body;

  const AddFavoriteMovie({required this.body});

  @override
  List<Object?> get props => [body];
}

class AddToWatchlist extends AccountEvent {
  final Map<String, dynamic> body;

  const AddToWatchlist({required this.body});

  @override
  List<Object?> get props => [body];
}
