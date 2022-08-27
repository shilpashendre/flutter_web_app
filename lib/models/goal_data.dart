class GoalData {
  final String goalTitle;
  final double percentage;
  final String imagePath;
  final String goalProgress;
  final String value;
  final String goalTimeLeft;
  GoalData(
      {required this.goalTitle,
      required this.value,
      required this.imagePath,
      required this.percentage,
      required this.goalProgress,
      required this.goalTimeLeft});

  @override
  String toString() {
    return '{$goalTitle, $value}';
  }
}
