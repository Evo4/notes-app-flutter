import 'package:flutter/cupertino.dart';
import 'package:notes_app/screens/home_page.dart';
import 'package:notes_app/screens/tab_page/tab_page_models.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [tabBarItem(TabPageItem.home), tabBarItem(TabPageItem.settings)],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return Center(child: activeTab(index));
          },
        );
      },
    );
  }

  Widget activeTab(int index) {
    switch (index) {
      case 0:
        return MyHomePage(title: "Notes");
      default:
        return Text("Ooops. Something went wrong.");
    }
  }

  BottomNavigationBarItem tabBarItem(TabPageItem item) {
    // return BottomNavigationBarItem(icon: item.icon, label: item.title);
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Column(children: [item.icon, Text(item.title)]),
      ),
    );
  }
}
