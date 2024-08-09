import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidioo/feature/data/repository/movie_repository.dart';
import 'package:vidioo/feature/domain/bloc/movie_event.dart';
import 'package:vidioo/feature/domain/bloc/movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository movieRepository;

  MovieBloc({required this.movieRepository}) : super(MovieInitial()) {
    on<FetchPopularMovies>(_onFetchPopularMovies);
    on<FetchMovieById>(_onFetchMovieById);
  }

  Future<void> _onFetchPopularMovies(FetchPopularMovies event, Emitter<MovieState> emit) async {
    emit(MovieLoading());
    try {
      final response = await movieRepository.getPopularMovies(
        language: event.language,
        page: event.page,
      );
      if (response.isSuccessful) {
        emit(MovieLoaded(response.body ?? []));
      } else {
        emit(MovieError('Failed to fetch popular movies'));
      }
    } catch (e) {
      emit(MovieError(e.toString()));
    }
  }

  Future<void> _onFetchMovieById(FetchMovieById event, Emitter<MovieState> emit) async {
    emit(MovieLoading());
    try {
      final response = await movieRepository.getMovieById(
        event.movieId,
        event.language,
      );
      if (response.isSuccessful) {
        emit(MovieDetailLoaded(response.body!));
      } else {
        emit(MovieError('Failed to fetch movie details'));
      }
    } catch (e) {
      emit(MovieError(e.toString()));
    }
  }
}
