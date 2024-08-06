import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vidioo/feature/data/model/movie_parts.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  @JsonKey(name:'id')
  final int? id;
  @JsonKey(name:'name')
  final String? name;
  @JsonKey(name:'overview')
  final String? overview;
  @JsonKey(name:'poster_path')
  final String? posterPath;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name:'parts')
  final MovieParts? parts;

  Movie({
      this.id,
      this.name,
      this.overview,
      this.posterPath,
      this.backdropPath,
      this.parts
      });

  factory Movie.fromJson(final Map<String, dynamic> json) {
    debugPrint("json_response= ${json.toString()}");
    return _$MovieFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieToJson(this);

}