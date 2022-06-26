import 'package:sport_app/data/model/sportsman.dart' as dto;
import 'package:sport_app/domain/entity/sportsman.dart';

Sportsman fromDto(dto.Sportsman dto) {
  return Sportsman(
    id: dto.id!,
    name: dto.name,
    surname: dto.surname,
    patronymic: dto.patronymic,
    category: _fromLevel(dto.category),
    birthday: DateTime.fromMillisecondsSinceEpoch(dto.birthday),
    sport: dto.sport,
  );
}

String _fromLevel(int category) {
  switch (category) {
    default:
      return 'Нет разраяда';
  }
}

dto.Sportsman toDto(Sportsman entity) {
  return dto.Sportsman.fromJson(entity.toJson());
}
