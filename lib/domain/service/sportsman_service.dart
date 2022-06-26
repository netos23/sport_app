import 'package:sport_app/data/repository/sportsmen_repository.dart';
import 'package:sport_app/domain/entity/sportsman.dart';
import 'package:sport_app/domain/mapper/sportsmen_mapper.dart';

class SportsmanService {
  final SportsmanRepository repository;

  SportsmanService(this.repository);

  Future<List<Sportsman>> getAll() async {
    var dtos = await repository.getAll();
    return List.unmodifiable(dtos.map((e) => fromDto(e)));
  }

  Future<void> delete(Iterable<int> selected) async {}
}
