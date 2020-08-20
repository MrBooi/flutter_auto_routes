// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/chats/chats.dart';

class Routes {
  static const String chatPage = '/';
  static const all = <String>{
    chatPage,
  };
}

class ChatRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.chatPage, page: ChatPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ChatPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatPage(),
        settings: data,
      );
    },
  };
}
