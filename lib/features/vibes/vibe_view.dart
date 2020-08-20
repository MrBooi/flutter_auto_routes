import 'package:auto_route/auto_route.dart';
import 'package:auto_routes_app/components/app_Icon_Button.dart';
import 'package:auto_routes_app/components/page_template.dart';
import 'package:auto_routes_app/routers/router.gr.dart';
import 'package:flutter/material.dart';

class VibeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'Vibe Page',
      message: 'vibe Page',
      child: Column(
        children: [
          buildPageList(context),
        ],
      ),
    );
  }

  Widget buildPageList(BuildContext context) {
    return Column(
      children: [
        AppIconButton(
          title: 'Trending vibes',
          icon: Icon(Icons.arrow_forward_ios),
          onTap: () => ExtendedNavigator.of(context).push(Routes.trendingView),
        ),
        AppIconButton(
          title: 'Upcoming vibes',
          icon: Icon(Icons.arrow_forward_ios),
          onTap: () => ExtendedNavigator.of(context).push(Routes.upcomingView),
        ),
        AppIconButton(
          title: 'Featured vibes',
          icon: Icon(Icons.arrow_forward_ios),
          onTap: () => ExtendedNavigator.of(context).push(Routes.featuredView),
        )
      ],
    );
  }
}
