import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tmdb.g.dart';

@JsonSerializable()
class Tmdb {
  @JsonKey(name:'avatar_path')
  final String? avatarPath;

  Tmdb({
      this.avatarPath
      });

  factory Tmdb.fromJson(final Map<String, dynamic> json) {
    debugPrint("json_response= ${json.toString()}");
    return _$TmdbFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TmdbToJson(this);

}