import 'package:sport_app/data/utils.dart';

class Coach implements IModel<int> {

  @override
  final int? id;
  final String name;
  final String surname;
  final String patronymic;

  Coach({
    this.id,
    required this.name,
    required this.surname,
    required this.patronymic,
  });
}
