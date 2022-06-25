import 'package:sport_app/data/model/sportsmen.dart';
import 'package:sport_app/data/utils.dart';

import 'package:sport_app/data/table_names.dart' as table_names;
import 'package:sqflite/sqlite_api.dart';

class SportsmenRepository implements IAsyncCrudRepository<int, Sportsmen> {
  final Database db;

  SportsmenRepository(this.db);

  @override
  Future<Sportsmen> add(Sportsmen val) async {
    final id = await db.insert(table_names.sportsmen, val.toJson());
    return val.copyWith(id: id);
  }

  @override
  Future<void> addAll(Sportsmen val) {
    // TODO: implement addAll
    throw UnimplementedError();
  }

  @override
  Future<Sportsmen?> delete(Sportsmen val) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Stream<Sportsmen> deleteAll() {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<Sportsmen?> deleteById(int id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Stream<Sportsmen> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Sportsmen?> getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> update(Sportsmen val) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> updateAll(Iterable<Sportsmen> val) {
    // TODO: implement updateAll
    throw UnimplementedError();
  }
}
