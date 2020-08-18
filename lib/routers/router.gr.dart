// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/chats.dart';
import '../pages/main_page.dart';
import '../pages/notifications.dart';
import '../pages/settings.dart';
import '../pages/vibes.dart';

class Routes {
  static const String mainPage = '/';
  static const String vibesPage = '/vibes-page';
  static const String chatPage = '/chat-page';
  static const String notificationPage = '/notification-page';
  static const String settingPage = '/setting-page';
  static const all = <String>{
    mainPage,
    vibesPage,
    chatPage,
    notificationPage,
    settingPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.mainPage, page: MainPage),
    RouteDef(Routes.vibesPage, page: VibesPage),
    RouteDef(Routes.chatPage, page: ChatPage),
    RouteDef(Routes.notificationPage, page: NotificationPage),
    RouteDef(Routes.settingPage, page: SettingPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MainPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MainPage(),
        settings: data,
      );
    },
    VibesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VibesPage(),
        settings: data,
      );
    },
    ChatPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatPage(),
        settings: data,
      );
    },
    NotificationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotificationPage(),
        settings: data,
      );
    },
    SettingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingPage(),
        settings: data,
      );
    },
  };
}
