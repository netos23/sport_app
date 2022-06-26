import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sport_app/data/model/sportsman.dart';
import 'package:sport_app/data/repository/sportsmen_repository.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux) {
    sqfliteFfiInit();
  }

  late SportsmanRepository repository;
  late Database db;

  setUp(() async {
    final migrations = await rootBundle.loadString('assets/migration/init.sql');
    final sportsmenData = await rootBundle.loadString(
      'assets/migration/sportsmen_test.sql',
    );

    db = await databaseFactoryFfi.openDatabase(
      inMemoryDatabasePath,
      options: OpenDatabaseOptions(
        version: 1,
        onCreate: (db, version) {
          db.execute(migrations);
        },
      ),
    );

    await db.execute(sportsmenData);

    repository = SportsmanRepository(db);
  });

  test('test read by id', () async {
    final sportsmenList = await repository.getAll();
    for (var sportsmen in sportsmenList) {
      final sportsmenFromDb = await repository.getById(sportsmen.id!);
      expect(sportsmenFromDb, equals(sportsmen));
    }
  });

  test('test read by unexpected id', () async {
    final sportsmenFromDb = await repository.getById(-1);
    expect(sportsmenFromDb, equals(null));
  });

  test('test read all', () async {
    final sportsmenList = await repository.getAll();
    expect(sportsmenList.length, equals(4));
  });

  test('test insert', () async {
    final sportsmen = await repository.add(const Sportsman(
      name: 'Даша',
      surname: 'Смирнова',
      patronymic: 'Валерьевна',
      category: 2,
    ));

    final sportsmenFromDb = await repository.getById(sportsmen.id!);
    expect(sportsmenFromDb, equals(sportsmen));

    final sportsmenList = await repository.getAll();
    expect(sportsmenList.length, equals(5));
  });

  test('test insert all', () async {
    var testSportsman = [
      const Sportsman(
        name: 'Даша',
        surname: 'Смирнова',
        patronymic: 'Валерьевна',
        category: 2,
      ),
      const Sportsman(
        name: 'Маша',
        surname: 'Морозова',
        patronymic: 'Валерьевна',
        category: 2,
      ),
      const Sportsman(
        name: 'Катя',
        surname: 'Смирнова',
        patronymic: 'Валерьевна',
        category: 4,
      ),
    ];

    await repository.addAll(testSportsman);

    final sportsmenList = await repository.getAll();
    expect(sportsmenList.length, equals(7));
  });

  test('test insert all ith empty list', () async {
    await repository.addAll([]);
    final sportsmenList = await repository.getAll();
    expect(sportsmenList.length, equals(4));
  });
  test('test delete all by entity', () async {
    final sportsmenList = await repository.getAll();

    for (var sportsmen in sportsmenList) {
      final deletedSportsmen = await repository.delete(sportsmen);
      expect(deletedSportsmen, true);
    }

    final emptyList = await repository.getAll();
    expect(emptyList.isEmpty,  true);
  });

  test('test delete all by id', () async {
    final sportsmenList = await repository.getAll();

    for (var sportsmen in sportsmenList) {
      final deletedSportsmen = await repository.deleteById(sportsmen.id!);
      expect(deletedSportsmen, true);
    }

    final emptyList = await repository.getAll();
    expect(emptyList.isEmpty,  true);
  });

  test('test delete all', () async {
    await repository.deleteAll();

    final emptyList = await repository.getAll();
    expect(emptyList.isEmpty,  true);
  });

  tearDown(() async {
    await db.close();
  });
}
