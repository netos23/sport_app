// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sportsman.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sportsman _$SportsmanFromJson(Map<String, dynamic> json) {
  return _Sportsman.fromJson(json);
}

/// @nodoc
mixin _$Sportsman {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get sport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportsmanCopyWith<Sportsman> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportsmanCopyWith<$Res> {
  factory $SportsmanCopyWith(Sportsman value, $Res Function(Sportsman) then) =
      _$SportsmanCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String name,
      String surname,
      String patronymic,
      String category,
      DateTime birthday,
      String sport});
}

/// @nodoc
class _$SportsmanCopyWithImpl<$Res> implements $SportsmanCopyWith<$Res> {
  _$SportsmanCopyWithImpl(this._value, this._then);

  final Sportsman _value;
  // ignore: unused_field
  final $Res Function(Sportsman) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? category = freezed,
    Object? birthday = freezed,
    Object? sport = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: patronymic == freezed
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sport: sport == freezed
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SportsmanCopyWith<$Res> implements $SportsmanCopyWith<$Res> {
  factory _$$_SportsmanCopyWith(
          _$_Sportsman value, $Res Function(_$_Sportsman) then) =
      __$$_SportsmanCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String name,
      String surname,
      String patronymic,
      String category,
      DateTime birthday,
      String sport});
}

/// @nodoc
class __$$_SportsmanCopyWithImpl<$Res> extends _$SportsmanCopyWithImpl<$Res>
    implements _$$_SportsmanCopyWith<$Res> {
  __$$_SportsmanCopyWithImpl(
      _$_Sportsman _value, $Res Function(_$_Sportsman) _then)
      : super(_value, (v) => _then(v as _$_Sportsman));

  @override
  _$_Sportsman get _value => super._value as _$_Sportsman;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? category = freezed,
    Object? birthday = freezed,
    Object? sport = freezed,
  }) {
    return _then(_$_Sportsman(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: patronymic == freezed
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sport: sport == freezed
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sportsman implements _Sportsman {
  const _$_Sportsman(
      {this.id,
      required this.name,
      required this.surname,
      required this.patronymic,
      required this.category,
      required this.birthday,
      required this.sport});

  factory _$_Sportsman.fromJson(Map<String, dynamic> json) =>
      _$$_SportsmanFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String patronymic;
  @override
  final String category;
  @override
  final DateTime birthday;
  @override
  final String sport;

  @override
  String toString() {
    return 'Sportsman(id: $id, name: $name, surname: $surname, patronymic: $patronymic, category: $category, birthday: $birthday, sport: $sport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sportsman &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname) &&
            const DeepCollectionEquality()
                .equals(other.patronymic, patronymic) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.sport, sport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname),
      const DeepCollectionEquality().hash(patronymic),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(sport));

  @JsonKey(ignore: true)
  @override
  _$$_SportsmanCopyWith<_$_Sportsman> get copyWith =>
      __$$_SportsmanCopyWithImpl<_$_Sportsman>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SportsmanToJson(this);
  }
}

abstract class _Sportsman implements Sportsman {
  const factory _Sportsman(
      {final int? id,
      required final String name,
      required final String surname,
      required final String patronymic,
      required final String category,
      required final DateTime birthday,
      required final String sport}) = _$_Sportsman;

  factory _Sportsman.fromJson(Map<String, dynamic> json) =
      _$_Sportsman.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get surname => throw _privateConstructorUsedError;
  @override
  String get patronymic => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  DateTime get birthday => throw _privateConstructorUsedError;
  @override
  String get sport => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SportsmanCopyWith<_$_Sportsman> get copyWith =>
      throw _privateConstructorUsedError;
}
