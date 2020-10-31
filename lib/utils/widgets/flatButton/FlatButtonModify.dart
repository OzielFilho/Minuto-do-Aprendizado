import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';

class FlatButtonModify extends StatelessWidget {
  FlatButtonModify(
      {@required this.title,
      @required this.onTap,
      this.icon,
      this.padding,
      this.color});
  final String title;
  final Function onTap;
  final IconData icon;
  final EdgeInsetsGeometry padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      focusColor: Colors.white,
      onPressed: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      padding: padding,
      color: color,
      child: Text(
        title,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
