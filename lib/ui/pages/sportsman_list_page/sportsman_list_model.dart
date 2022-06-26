import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sport_app/domain/entity/sportsman.dart';

part 'sportsman_list_model.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SportsmanListModel with _$SportsmanListModel {
  const factory SportsmanListModel({
    List<Sportsman>? sportsmen,
    required Set<int> selected,
  }) = _SportsmanListModel;
}
