import 'package:equatable/equatable.dart';
import 'package:vidioo/feature/data/model/movie.dart';

abstract class MovieState extends Equatable {
  const MovieState();

  @override
  List<Object?> get props => [];
}

class MovieInitial extends MovieState {}

class MovieLoading extends MovieState {}

class MovieLoaded extends MovieState {
  final List<Movie> movies;

  const MovieLoaded(this.movies);

  @override
  List<Object?> get props => [movies];
}

class MovieDetailLoaded extends MovieState {
  final Movie movie;

  const MovieDetailLoaded(this.movie);

  @override
  List<Object?> get props => [movie];
}

class MovieError extends MovieState {
  final String message;

  const MovieError(this.message);

  @override
  List<Object?> get props => [message];
}
