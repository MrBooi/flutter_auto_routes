import 'package:auto_route/auto_route.dart';
import 'package:auto_routes_app/features/chats/chats.dart';
import 'package:auto_routes_app/features/notifications/notifications.dart';
import 'package:flutter/material.dart';

import 'routers/router.gr.dart';

void main() {
  runApp(StartPage());
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  PageController controller;

  @override
  void initState() {
    controller = PageController(keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto routes',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _buildPageBody(controller),
        bottomNavigationBar: _buildBottomNavigation(controller),
      ),
    );
  }

  Widget _buildPageBody(PageController controller) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: controller,
      children: [
        ExtendedNavigator(
          router: Router(),
          name: 'router',
        ),
        ChatPage(),
        // ExtendedNavigator<ChatRouter>(
        //   router: ChatRouter(),
        // ),
        NotificationPage(),
        // ExtendedNavigator<NotificationRouter>(
        //   router: NotificationRouter(),
        // ),
      ],
    );
  }

  Widget _buildBottomNavigation(PageController pageController) {
    return Material(
      elevation: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavButton(
              icon: Icon(Icons.assignment),
              onTap: () {
                pageController.jumpToPage(0);
              }),
          _buildNavButton(
              icon: Icon(Icons.chat),
              onTap: () {
                pageController.jumpToPage(1);
              }),
          _buildNavButton(
              icon: Icon(Icons.notifications_active),
              onTap: () {
                pageController.jumpToPage(2);
              }),
        ],
      ),
    );
  }

  Widget _buildNavButton({Icon icon, void Function() onTap}) {
    return IconButton(icon: icon, onPressed: onTap);
  }
}
