import 'package:sport_app/data/model/sportsman.dart';
import 'package:sport_app/data/utils.dart';

import 'package:sport_app/data/table_names.dart' as table_names;
import 'package:sqflite/sqlite_api.dart';

class SportsmanRepository implements IAsyncCrudRepository<int, Sportsman> {
  final Database _db;

  SportsmanRepository(this._db);

  @override
  Future<Sportsman> add(Sportsman sportsman) async {
    final id = await _db.insert(table_names.sportsman, sportsman.toJson());
    return sportsman.copyWith(id: id);
  }

  @override
  Future<void> addAll(Iterable<Sportsman> sportsmen) async {
    final batch = _db.batch();
    for (var sportsman in sportsmen) {
      batch.insert(table_names.sportsman, sportsman.toJson());
    }
    await batch.commit(noResult: true);
  }

  @override
  Future<bool> delete(Sportsman sportsman) {
    final id = sportsman.id;
    if (id == null) {
      throw const FormatException('Missing sportsman id');
    }

    return deleteById(id);
  }

  @override
  Future<bool> deleteById(int id) async {
    final sportsmanFromDb = await _db.delete(
      table_names.sportsman,
      where: 'id = ?',
      whereArgs: [id],
    );

    return sportsmanFromDb >= 1;
  }

  @override
  Future<void> deleteAll() async {
    await _db.rawDelete('DELETE FROM ${table_names.sportsman}');
  }

  @override
  Future<Iterable<Sportsman>> getAll() async {
    final rawSportsman = await _db.query(table_names.sportsman);

    return List.unmodifiable(
      rawSportsman.map((s) => Sportsman.fromJson(s)),
    );
  }

  @override
  Future<Sportsman?> getById(int id) async {
    final query = await _db.query(
      table_names.sportsman,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (query.isEmpty || query.length > 1) {
      return null;
    }

    return Sportsman.fromJson(query.single);
  }

  @override
  Future<void> update(Sportsman sportsman) async {
    final id = sportsman.id;
    if (id == null) {
      throw const FormatException('Missing id');
    }

    await _db.update(
      table_names.sportsman,
      sportsman.toJson(),
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<void> updateAll(Iterable<Sportsman> sportsmen) async {
    final batch = _db.batch();
    for (var sportsman in sportsmen) {
      final id = sportsman.id;

      if (id == null) {
        throw const FormatException('Missing id');
      }

      batch.update(
        table_names.sportsman,
        sportsman.toJson(),
        where: 'id = ?',
        whereArgs: [id],
      );
    }
    await batch.commit(noResult: true);
  }
}
