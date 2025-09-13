import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jaspr/jaspr.dart';

part 'basic.freezed.dart';
part 'basic.g.dart';

@freezed
class Basic with _$Basic {
  const factory Basic({
    required String firstName,
    required String lastName,
    required int age,
    required String email,
    required String phone,
    required String address,
    required List<String> photos,
    required String resume,
  }) = _Basic;

  @decoder
  factory Basic.fromJson(Map<String, Object?> json) => _$BasicFromJson(json);
  
  @encoder
  Map<String, Object?> toJson() => _$BasicToJson(this);
}
