import 'package:freezed_annotation/freezed_annotation.dart';

part 'sportsman.g.dart';

part 'sportsman.freezed.dart';

@freezed
class Sportsman with _$Sportsman {
  const factory Sportsman({
    required int id,
    required String name,
    required String surname,
    required String patronymic,
    required String category,
    required DateTime birthday,
    required String sport,
  }) = _Sportsman;

  factory Sportsman.fromJson(Map<String, Object?> json) =>
      _$SportsmanFromJson(json);
}
