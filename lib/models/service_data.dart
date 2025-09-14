import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jaspr/jaspr.dart';

part 'service_data.freezed.dart';
part 'service_data.g.dart';

@freezed
class ServiceData with _$ServiceData {
  const factory ServiceData({
    required String icon,
    required String title,
  }) = _ServiceData;

  @decoder
  factory ServiceData.fromJson(Map<String, Object?> json) => _$ServiceDataFromJson(json);
  
  @override
  @encoder
  Map<String, Object?> toJson() => _$ServiceDataToJson(this);
}
