import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sport_app/data/utils.dart';

part 'sportsmen.freezed.dart';
part 'sportsmen.g.dart';

@freezed
class Sportsmen  with _$Sportsmen implements IModel<int> {
  const factory Sportsmen({
    int? id,
    required String name,
    required String surname,
    required String patronymic,
    required String category,
  }) = _Sportsmen;

  factory Sportsmen.fromJson(Map<String, dynamic> json) =>
  _$SportsmenFromJson(json);
}
