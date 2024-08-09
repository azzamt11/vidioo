import 'package:equatable/equatable.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();

  @override
  List<Object?> get props => [];
}

class FetchPopularMovies extends MovieEvent {
  final String language;
  final int page;

  const FetchPopularMovies({required this.language, required this.page});

  @override
  List<Object?> get props => [language, page];
}

class FetchMovieById extends MovieEvent {
  final int movieId;
  final String language;

  const FetchMovieById({required this.movieId, required this.language});

  @override
  List<Object?> get props => [movieId, language];
}
