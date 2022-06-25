import 'package:sport_app/data/utils.dart';

class SportPlatform implements IModel<int> {
  @override
  final int? id;
  final String name;
  final String adress;
  final int capacity;

  SportPlatform({
    this.id,
    required this.name,
    required this.adress,
    required this.capacity,
  });
}
