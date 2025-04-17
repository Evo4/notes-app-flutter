// TabPageItem
import 'package:flutter/cupertino.dart';

enum TabPageItem {
  // Cases
  home(tabPage: 0, title: "Home", image: CupertinoIcons.home),
  settings(tabPage: 1, title: "Settings", image: CupertinoIcons.gear);

  //  Init
  const TabPageItem({
    required this.tabPage,
    required this.title,
    required this.image,
  });

  // Public Properties
  final int tabPage;
  final String title;
  final IconData image;

  Widget get icon => Icon(image, size: 28);

  // Static Methods
  static List<TabPageItem> allCases() {
    return [TabPageItem.home, TabPageItem.settings];
  }
}
