import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vidioo/feature/data/model/user_avatar.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name:'id')
  final int? id;
  @JsonKey(name:'name')
  final String? name;
  @JsonKey(name:'username')
  final String? username;
  @JsonKey(name:'avatar')
  final UserAvatar? avatar;
  @JsonKey(name: 'include_adult')
  final bool? includeAdult;

  User({
      this.id,
      this.name,
      this.username,
      this.avatar,
      this.includeAdult
      });

  factory User.fromJson(final Map<String, dynamic> json) {
    debugPrint("json_response= ${json.toString()}");
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);

}