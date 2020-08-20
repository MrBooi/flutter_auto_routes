// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/notifications/notifications.dart';

class Routes {
  static const String notificationPage = '/';
  static const all = <String>{
    notificationPage,
  };
}

class NotificationRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.notificationPage, page: NotificationPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    NotificationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotificationPage(),
        settings: data,
      );
    },
  };
}
