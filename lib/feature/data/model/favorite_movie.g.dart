// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteMovie _$FavoriteMovieFromJson(Map<String, dynamic> json) =>
    FavoriteMovie(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      parts: json['parts'] == null
          ? null
          : MovieParts.fromJson(json['parts'] as Map<String, dynamic>),
      isFavorite: json['favorite'] as bool?,
    );

Map<String, dynamic> _$FavoriteMovieToJson(FavoriteMovie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'parts': instance.parts,
      'favorite': instance.isFavorite,
    };
