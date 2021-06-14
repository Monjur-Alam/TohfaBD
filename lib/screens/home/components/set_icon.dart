import 'package:flutter/material.dart';
import 'package:shop_app/themes/theme.dart';

class SetIcon extends StatelessWidget {
  const SetIcon({
    Key key,
    @required this.icon,
    @required this.color,
  }) : super(key: key);

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          color: Colors.white,
          boxShadow: AppTheme.shadow),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
