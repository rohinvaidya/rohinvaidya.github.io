import 'package:devfolio/models/work.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jaspr/jaspr.dart';

part 'about.freezed.dart';
part 'about.g.dart';

@freezed
class About with _$About {
  const factory About({
    required String description,
    required List<String> tech,
    required List<Work> works,
    required String heading,
  }) = _About;

  @decoder
  factory About.fromJson(Map<String, Object?> json) => _$AboutFromJson(json);
  
  @encoder
  Map<String, Object?> toJson() => _$AboutToJson(this);
}
