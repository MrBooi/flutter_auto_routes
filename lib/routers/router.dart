import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_routes_app/features/vibes/featured_view.dart';
import 'package:auto_routes_app/features/vibes/trending_view.dart';
import 'package:auto_routes_app/features/vibes/upcoming_view.dart';
import 'package:auto_routes_app/features/vibes/vibe_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: VibeView, initial: true),
    MaterialRoute(page: FeaturedView),
    MaterialRoute(page: TrendingView),
    MaterialRoute(page: UpcomingView),
  ],
)
class $Router {}
