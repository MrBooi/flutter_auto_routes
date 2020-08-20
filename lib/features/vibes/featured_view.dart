import 'package:auto_route/auto_route.dart';
import 'package:auto_routes_app/components/page_template.dart';

import 'package:flutter/material.dart';

class FeaturedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'Featured View',
      message: 'Featured....',
      child: Column(
        children: [
          RaisedButton(
            onPressed: () {
              ExtendedNavigator.of(context).pop();
            },
            child: Text('Next button'),
          )
        ],
      ),
    );
  }
}
