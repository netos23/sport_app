// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sportsman_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SportsmanListModel {
  List<Sportsman>? get sportsmen => throw _privateConstructorUsedError;
  Set<int> get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SportsmanListModelCopyWith<SportsmanListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportsmanListModelCopyWith<$Res> {
  factory $SportsmanListModelCopyWith(
          SportsmanListModel value, $Res Function(SportsmanListModel) then) =
      _$SportsmanListModelCopyWithImpl<$Res>;
  $Res call({List<Sportsman>? sportsmen, Set<int> selected});
}

/// @nodoc
class _$SportsmanListModelCopyWithImpl<$Res>
    implements $SportsmanListModelCopyWith<$Res> {
  _$SportsmanListModelCopyWithImpl(this._value, this._then);

  final SportsmanListModel _value;
  // ignore: unused_field
  final $Res Function(SportsmanListModel) _then;

  @override
  $Res call({
    Object? sportsmen = freezed,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      sportsmen: sportsmen == freezed
          ? _value.sportsmen
          : sportsmen // ignore: cast_nullable_to_non_nullable
              as List<Sportsman>?,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_SportsmanListModelCopyWith<$Res>
    implements $SportsmanListModelCopyWith<$Res> {
  factory _$$_SportsmanListModelCopyWith(_$_SportsmanListModel value,
          $Res Function(_$_SportsmanListModel) then) =
      __$$_SportsmanListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Sportsman>? sportsmen, Set<int> selected});
}

/// @nodoc
class __$$_SportsmanListModelCopyWithImpl<$Res>
    extends _$SportsmanListModelCopyWithImpl<$Res>
    implements _$$_SportsmanListModelCopyWith<$Res> {
  __$$_SportsmanListModelCopyWithImpl(
      _$_SportsmanListModel _value, $Res Function(_$_SportsmanListModel) _then)
      : super(_value, (v) => _then(v as _$_SportsmanListModel));

  @override
  _$_SportsmanListModel get _value => super._value as _$_SportsmanListModel;

  @override
  $Res call({
    Object? sportsmen = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$_SportsmanListModel(
      sportsmen: sportsmen == freezed
          ? _value.sportsmen
          : sportsmen // ignore: cast_nullable_to_non_nullable
              as List<Sportsman>?,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

class _$_SportsmanListModel implements _SportsmanListModel {
  const _$_SportsmanListModel({this.sportsmen, required this.selected});

  @override
  final List<Sportsman>? sportsmen;
  @override
  final Set<int> selected;

  @override
  String toString() {
    return 'SportsmanListModel(sportsmen: $sportsmen, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SportsmanListModel &&
            const DeepCollectionEquality().equals(other.sportsmen, sportsmen) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sportsmen),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$$_SportsmanListModelCopyWith<_$_SportsmanListModel> get copyWith =>
      __$$_SportsmanListModelCopyWithImpl<_$_SportsmanListModel>(
          this, _$identity);
}

abstract class _SportsmanListModel implements SportsmanListModel {
  const factory _SportsmanListModel(
      {final List<Sportsman>? sportsmen,
      required final Set<int> selected}) = _$_SportsmanListModel;

  @override
  List<Sportsman>? get sportsmen => throw _privateConstructorUsedError;
  @override
  Set<int> get selected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SportsmanListModelCopyWith<_$_SportsmanListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
