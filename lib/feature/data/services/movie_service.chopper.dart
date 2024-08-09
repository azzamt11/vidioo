// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$MovieService extends MovieService {
  _$MovieService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = MovieService;

  @override
  Future<Response<dynamic>> getPopularMovies(
    String language,
    int page,
  ) {
    final Uri $url = Uri.parse('/movie/popular');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language,
      'page': page,
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
  Future<Response<dynamic>> getMovieById(
    int movieId,
    String language,
  ) {
    final Uri $url = Uri.parse('/movie/${movieId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'language': language
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
