import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_routes_app/features/chats/chats.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: ChatPage, initial: true),
  ],
)
class $ChatRouter {}
