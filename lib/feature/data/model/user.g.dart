// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] == null
          ? null
          : UserAvatar.fromJson(json['avatar'] as Map<String, dynamic>),
      includeAdult: json['include_adult'] as bool?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'avatar': instance.avatar,
      'include_adult': instance.includeAdult,
    };
