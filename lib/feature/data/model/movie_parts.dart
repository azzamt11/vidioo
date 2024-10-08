import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_parts.g.dart';

@JsonSerializable()
class MovieParts {
  @JsonKey(name:'adult')
  final bool? adult;
  @JsonKey(name:'backdrop_path')
  final bool? backdropPath;
  @JsonKey(name:'id')
  final int? id;
  @JsonKey(name:'title')
  final String? title;
  @JsonKey(name:'original_language')
  final String? originalLanguage;
  @JsonKey(name:'original_title')
  final String? originalTitle;
  @JsonKey(name:'overview')
  final String? overview;
  @JsonKey(name:'poster_path')
  final String? posterPath;
  @JsonKey(name:'media_type')
  final String? mediaType;
  @JsonKey(name:'genre_ids')
  final List<int>? genreIds;
  @JsonKey(name:'popularity')
  final num? popularity;
  @JsonKey(name:'release_date')
  final String? releaseDate;
  @JsonKey(name:'video')
  final bool? video;
  @JsonKey(name:'vote_average')
  final num? voteAverage;
  @JsonKey(name:'vote_count')
  final int? voteCount;
  

  MovieParts({
      this.id,
      this.title,
      this.adult,
      this.backdropPath,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.mediaType,
      this.genreIds,
      this.popularity,
      this.releaseDate,
      this.video,
      this.voteAverage,
      this.voteCount
      });

  factory MovieParts.fromJson(final Map<String, dynamic> json) {
    debugPrint("json_response= ${json.toString()}");
    return _$MoviePartsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MoviePartsToJson(this);

}