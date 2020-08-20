import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_routes_app/features/notifications/notifications.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: NotificationPage, initial: true),
  ],
)
class $NotificationRouter {}
