class GoalData {
  final String goalTitle;
  final double percentage;
  final String imagePath;
  final String goalTime;
  final String value;
  final String valuePerWeel;
  GoalData(
      {required this.goalTitle,
      required this.value,
      required this.imagePath,
      required this.percentage,
      required this.goalTime,
      required this.valuePerWeel});

  @override
  String toString() {
    return '{$goalTitle, $value}';
  }
}
