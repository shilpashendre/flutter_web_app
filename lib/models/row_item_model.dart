class RowItemModel {
  final String title;
  final String subtitle;
  final String imagePath;
  final String clickIcon;
  final bool displayMsgIcon;

  RowItemModel(
      {required this.title,
      required this.clickIcon,
      required this.imagePath,
      this.displayMsgIcon = false,
      required this.subtitle});

  @override
  String toString() {
    return '{$title, $imagePath}';
  }
}
