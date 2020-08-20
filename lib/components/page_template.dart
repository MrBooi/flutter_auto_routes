import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  final String title;
  final String message;
  final Widget child;

  const PageTemplate({Key key, this.title, this.message, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(message),
          ),
          child == null ? Container() : child
        ],
      ),
    );
  }
}
