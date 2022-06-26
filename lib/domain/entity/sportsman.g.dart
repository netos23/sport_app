// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sportsman.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sportsman _$$_SportsmanFromJson(Map<String, dynamic> json) => _$_Sportsman(
      id: json['id'] as int,
      name: json['name'] as String,
      surname: json['surname'] as String,
      patronymic: json['patronymic'] as String,
      category: json['category'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      sport: json['sport'] as String,
    );

Map<String, dynamic> _$$_SportsmanToJson(_$_Sportsman instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'category': instance.category,
      'birthday': instance.birthday.toIso8601String(),
      'sport': instance.sport,
    };
