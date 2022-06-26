import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_app/data/utils.dart';

part 'sportsman.freezed.dart';

part 'sportsman.g.dart';

@freezed
class Sportsman with _$Sportsman implements IModel<int> {
  const factory Sportsman({
    int? id,
    required String name,
    required String surname,
    required String patronymic,
    required int category,
  }) = _Sportsman;

  factory Sportsman.fromJson(Map<String, Object?> json) =>
      _$SportsmanFromJson(json);
}
