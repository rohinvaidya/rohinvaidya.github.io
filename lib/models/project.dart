import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jaspr/jaspr.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String banner,
    required String icon,
    required String title,
    required String description,
    required String link,
  }) = _Project;

  @decoder
  factory Project.fromJson(Map<String, Object?> json) => _$ProjectFromJson(json);
  
  @encoder
  Map<String, Object?> toJson() => _$ProjectToJson(this);
}
