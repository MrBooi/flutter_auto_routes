import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_routes_app/pages/chats.dart';
import 'package:auto_routes_app/pages/main_page.dart';
import 'package:auto_routes_app/pages/notifications.dart';
import 'package:auto_routes_app/pages/settings.dart';
import 'package:auto_routes_app/pages/vibes.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: MainPage, initial: true),
    MaterialRoute(page: VibesPage),
    MaterialRoute(page: ChatPage),
    MaterialRoute(page: NotificationPage),
    MaterialRoute(page: SettingPage),
  ],
)
class $Router {}
