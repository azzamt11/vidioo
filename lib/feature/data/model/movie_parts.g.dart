// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_parts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieParts _$MoviePartsFromJson(Map<String, dynamic> json) => MovieParts(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as bool?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['media_type'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      popularity: json['popularity'] as num?,
      releaseDate: json['release_date'] as String?,
      video: json['video'] as bool?,
      voteAverage: json['vote_average'] as num?,
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MoviePartsToJson(MovieParts instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'genre_ids': instance.genreIds,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
