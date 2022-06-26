import 'package:sport_app/data/utils.dart';

class Judge implements IModel<int> {
  @override
  final int? id;
  final String name;
  final String surname;
  final String patronymic;
  final int category;

  Judge({
    this.id,
    required this.name,
    required this.surname,
    required this.patronymic,
    required this.category,
  });
}
