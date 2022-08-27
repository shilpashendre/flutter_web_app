class DashboardHeaderMenu {
  final String title;
  final String value;
  final String imagePath;
  DashboardHeaderMenu(
      {required this.title, required this.value, required this.imagePath});

  @override
  String toString() {
    return '{$title, $value}';
  }
}
