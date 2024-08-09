import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidioo/feature/data/repository/account_repository.dart';
import 'package:vidioo/feature/domain/bloc/account_event.dart';
import 'package:vidioo/feature/domain/bloc/account_state.dart';


class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final AccountRepository accountRepository;

  AccountBloc({required this.accountRepository}) : super(AccountInitial()) {
    on<FetchAccountDetail>(_onFetchAccountDetail);
    on<FetchFavoriteMovies>(_onFetchFavoriteMovies);
    on<FetchWatchlistMovies>(_onFetchWatchlistMovies);
    on<AddFavoriteMovie>(_onAddFavoriteMovie);
    on<AddToWatchlist>(_onAddToWatchlist);
  }

  Future<void> _onFetchAccountDetail(FetchAccountDetail event, Emitter<AccountState> emit) async {
    emit(AccountLoading());
    try {
      final response = await accountRepository.getAccountDetail();
      if (response.isSuccessful) {
        emit(AccountDetailLoaded(response.body!));
      } else {
        emit(AccountError('Failed to fetch account details'));
      }
    } catch (e) {
      emit(AccountError(e.toString()));
    }
  }

  Future<void> _onFetchFavoriteMovies(FetchFavoriteMovies event, Emitter<AccountState> emit) async {
    emit(AccountLoading());
    try {
      final response = await accountRepository.getFavoriteMovies(
        language: event.language,
        page: event.page,
        sortBy: event.sortBy,
      );
      if (response.isSuccessful) {
        emit(FavoriteMoviesLoaded(response.body ?? []));
      } else {
        emit(AccountError('Failed to fetch favorite movies'));
      }
    } catch (e) {
      emit(AccountError(e.toString()));
    }
  }

  Future<void> _onFetchWatchlistMovies(FetchWatchlistMovies event, Emitter<AccountState> emit) async {
    emit(AccountLoading());
    try {
      final response = await accountRepository.getWatchlistMovies(
        language: event.language,
        page: event.page,
        sortBy: event.sortBy,
      );
      if (response.isSuccessful) {
        emit(WatchlistMoviesLoaded(response.body ?? []));
      } else {
        emit(AccountError('Failed to fetch watchlist movies'));
      }
    } catch (e) {
      emit(AccountError(e.toString()));
    }
  }

  Future<void> _onAddFavoriteMovie(AddFavoriteMovie event, Emitter<AccountState> emit) async {
    emit(AccountLoading());
    try {
      final response = await accountRepository.addFavorite(event.body);
      if (response.isSuccessful) {
        // Handle success, e.g., refetch favorite movies
      } else {
        emit(AccountError('Failed to add favorite movie'));
      }
    } catch (e) {
      emit(AccountError(e.toString()));
    }
  }

  Future<void> _onAddToWatchlist(AddToWatchlist event, Emitter<AccountState> emit) async {
    emit(AccountLoading());
    try {
      final response = await accountRepository.addToWatchlist(event.body);
      if (response.isSuccessful) {
        // Handle success, e.g., refetch watchlist movies
      } else {
        emit(AccountError('Failed to add to watchlist'));
      }
    } catch (e) {
      emit(AccountError(e.toString()));
    }
  }
}
