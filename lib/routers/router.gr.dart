// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/vibes/featured_view.dart';
import '../features/vibes/trending_view.dart';
import '../features/vibes/upcoming_view.dart';
import '../features/vibes/vibe_view.dart';

class Routes {
  static const String vibeView = '/';
  static const String featuredView = '/featured-view';
  static const String trendingView = '/trending-view';
  static const String upcomingView = '/upcoming-view';
  static const all = <String>{
    vibeView,
    featuredView,
    trendingView,
    upcomingView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.vibeView, page: VibeView),
    RouteDef(Routes.featuredView, page: FeaturedView),
    RouteDef(Routes.trendingView, page: TrendingView),
    RouteDef(Routes.upcomingView, page: UpcomingView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    VibeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VibeView(),
        settings: data,
      );
    },
    FeaturedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FeaturedView(),
        settings: data,
      );
    },
    TrendingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TrendingView(),
        settings: data,
      );
    },
    UpcomingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UpcomingView(),
        settings: data,
      );
    },
  };
}
