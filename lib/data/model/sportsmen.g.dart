// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sportsmen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sportsmen _$$_SportsmenFromJson(Map<String, dynamic> json) => _$_Sportsmen(
      id: json['id'] as int?,
      name: json['name'] as String,
      surname: json['surname'] as String,
      patronymic: json['patronymic'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_SportsmenToJson(_$_Sportsmen instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'category': instance.category,
    };
