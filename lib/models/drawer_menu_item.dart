class DrawerMenuItem {
  final String title;
  final String imagePath;
  DrawerMenuItem({
    required this.title,
    required this.imagePath,
  });

  @override
  String toString() {
    return '{$title, $imagePath}';
  }
}
