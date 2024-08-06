import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vidioo/feature/data/model/tmdb.dart';

part 'user_avatar.g.dart';

@JsonSerializable()
class UserAvatar {
  @JsonKey(name:'gravatar')
  final Object? gravatar;
  @JsonKey(name:'tmdb')
  final Tmdb? tmdb;

  UserAvatar({
      this.gravatar,
      this.tmdb
      });

  factory UserAvatar.fromJson(final Map<String, dynamic> json) {
    debugPrint("json_response= ${json.toString()}");
    return _$UserAvatarFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserAvatarToJson(this);

}