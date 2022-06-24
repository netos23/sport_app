class CompetitionResultTable {
  final int? id;
  final int competitionId;
  final int sportsmenId;
  final int score;
  final int leaderBoardPosition;

  CompetitionResultTable({
    this.id,
    required this.competitionId,
    required this.sportsmenId,
    required this.score,
    required this.leaderBoardPosition,
  });
}
