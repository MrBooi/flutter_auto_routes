import 'package:auto_routes_app/data/nav_items.dart';
import 'package:auto_routes_app/pages/chats.dart';
import 'package:auto_routes_app/pages/notifications.dart';
import 'package:auto_routes_app/pages/settings.dart';
import 'package:auto_routes_app/pages/vibes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController();
  int bottomSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageBody(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildPageBody() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      children: [
        VibesPage(),
        ChatPage(),
        NotificationPage(),
        SettingPage(),
      ],
    );
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.jumpToPage(index);
    });
  }

  Widget buildBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: bottomSelectedIndex,
      onTap: bottomTapped,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      items: navItem
          .map(
            (item) => BottomNavigationBarItem(
              icon: Icon(item['icon']),
              title: Text(item['title']),
            ),
          )
          .toList(),
    );
  }
}
