import 'package:json_annotation/json_annotation.dart';
import 'package:vidioo/feature/data/model/movie_parts.dart';
import 'movie.dart';

part 'watchlist_movie.g.dart';

@JsonSerializable()
class WatchlistMovie extends Movie {
  @JsonKey(name: 'watchlist')
  final bool? isInWatchlist;

  WatchlistMovie({
    int? id,
    String? name,
    String? overview,
    String? posterPath,
    String? backdropPath,
    MovieParts? parts,
    this.isInWatchlist,
  }) : super(
          id: id,
          name: name,
          overview: overview,
          posterPath: posterPath,
          backdropPath: backdropPath,
          parts: parts,
        );

  factory WatchlistMovie.fromJson(Map<String, dynamic> json) => _$WatchlistMovieFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WatchlistMovieToJson(this);
}
