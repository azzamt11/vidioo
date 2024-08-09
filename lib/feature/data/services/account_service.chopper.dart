// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AccountService extends AccountService {
  _$AccountService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AccountService;

  @override
  Future<Response<dynamic>> accountDetail() {
    final Uri $url = Uri.parse('/account/21424301');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getFavoriteMovies(
    String language,
    int page,
    String sortBy,
  ) {
    final Uri $url = Uri.parse('/account/21424301/favorite/movies');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getWatchlistMovies(
    String language,
    int page,
    String sortBy,
  ) {
    final Uri $url = Uri.parse('/account/21424301/watchlist/movies');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
      'sort_by': sortBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addFavorite(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/account/21424301/favorite');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addToWatchlist(Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/account/21424301/watchlist');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
