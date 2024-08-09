import 'package:json_annotation/json_annotation.dart';
import 'package:vidioo/feature/data/model/movie_parts.dart';
import 'movie.dart';

part 'favorite_movie.g.dart';

@JsonSerializable()
class FavoriteMovie extends Movie {
  @JsonKey(name: 'favorite')
  final bool? isFavorite;

  FavoriteMovie({
    int? id,
    String? name,
    String? overview,
    String? posterPath,
    String? backdropPath,
    MovieParts? parts,
    this.isFavorite,
  }) : super(
          id: id,
          name: name,
          overview: overview,
          posterPath: posterPath,
          backdropPath: backdropPath,
          parts: parts,
        );

  factory FavoriteMovie.fromJson(Map<String, dynamic> json) => _$FavoriteMovieFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FavoriteMovieToJson(this);
}
