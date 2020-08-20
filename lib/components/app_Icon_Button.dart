import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final String title;
  final Icon icon;
  final Function onTap;

  const AppIconButton({Key key, this.title, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onTap,
      child: Text(title),
    );
  }
}
