// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAvatar _$UserAvatarFromJson(Map<String, dynamic> json) => UserAvatar(
      gravatar: json['gravatar'],
      tmdb: json['tmdb'] == null
          ? null
          : Tmdb.fromJson(json['tmdb'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAvatarToJson(UserAvatar instance) =>
    <String, dynamic>{
      'gravatar': instance.gravatar,
      'tmdb': instance.tmdb,
    };
