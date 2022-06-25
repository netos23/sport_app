// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sportsmen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sportsmen _$SportsmenFromJson(Map<String, dynamic> json) {
  return _Sportsmen.fromJson(json);
}

/// @nodoc
mixin _$Sportsmen {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get patronymic => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportsmenCopyWith<Sportsmen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportsmenCopyWith<$Res> {
  factory $SportsmenCopyWith(Sportsmen value, $Res Function(Sportsmen) then) =
      _$SportsmenCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String name,
      String surname,
      String patronymic,
      String category});
}

/// @nodoc
class _$SportsmenCopyWithImpl<$Res> implements $SportsmenCopyWith<$Res> {
  _$SportsmenCopyWithImpl(this._value, this._then);

  final Sportsmen _value;
  // ignore: unused_field
  final $Res Function(Sportsmen) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? category = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_SportsmenCopyWith<$Res> implements $SportsmenCopyWith<$Res> {
  factory _$$_SportsmenCopyWith(
          _$_Sportsmen value, $Res Function(_$_Sportsmen) then) =
      __$$_SportsmenCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String name,
      String surname,
      String patronymic,
      String category});
}

/// @nodoc
class __$$_SportsmenCopyWithImpl<$Res> extends _$SportsmenCopyWithImpl<$Res>
    implements _$$_SportsmenCopyWith<$Res> {
  __$$_SportsmenCopyWithImpl(
      _$_Sportsmen _value, $Res Function(_$_Sportsmen) _then)
      : super(_value, (v) => _then(v as _$_Sportsmen));

  @override
  _$_Sportsmen get _value => super._value as _$_Sportsmen;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_Sportsmen(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class  _$_Sportsmen implements _Sportsmen {
  const _$_Sportsmen(
      {this.id,
      required this.name,
      required this.surname,
      required this.patronymic,
      required this.category});

  factory _$_Sportsmen.fromJson(Map<String, dynamic> json) =>
      _$$_SportsmenFromJson(json);

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
  String toString() {
    return 'Sportsmen(id: $id, name: $name, surname: $surname, patronymic: $patronymic, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sportsmen &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname) &&
            const DeepCollectionEquality()
                .equals(other.patronymic, patronymic) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname),
      const DeepCollectionEquality().hash(patronymic),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_SportsmenCopyWith<_$_Sportsmen> get copyWith =>
      __$$_SportsmenCopyWithImpl<_$_Sportsmen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SportsmenToJson(this);
  }
}

abstract class _Sportsmen implements Sportsmen {
  const factory _Sportsmen(
      {final int? id,
      required final String name,
      required final String surname,
      required final String patronymic,
      required final String category}) = _$_Sportsmen;

  factory _Sportsmen.fromJson(Map<String, dynamic> json) =
      _$_Sportsmen.fromJson;

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
  @JsonKey(ignore: true)
  _$$_SportsmenCopyWith<_$_Sportsmen> get copyWith =>
      throw _privateConstructorUsedError;
}
