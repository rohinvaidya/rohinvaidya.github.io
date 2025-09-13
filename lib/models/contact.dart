import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jaspr/jaspr.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required String icon,
    required String title,
    required String description,
    required String action,
  }) = _Contact;

  @decoder
  factory Contact.fromJson(Map<String, Object?> json) => _$ContactFromJson(json);
  
  @encoder
  Map<String, Object?> toJson() => _$ContactToJson(this);
}
