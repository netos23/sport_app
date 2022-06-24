class Competition {
  final int? id;
  final int name;
  final DateTime start;
  final DateTime finish;
  final CompetitionStatus status;

  Competition({
    this.id,
    required this.name,
    required this.start,
    required this.finish,
    required this.status,
  });
}

enum CompetitionStatus {
  started,
  finished,
  canceled,
}
