import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:shop_app/size_config.dart';
import '../constants.dart';

class MyTextIconButton extends StatelessWidget {
  const MyTextIconButton({
    Key key,
    @required this.buttonName,
    @required this.icon,
    @required this.onTap,
    @required this.bgColor,
    @required this.textColor,
  }) : super(key: key);
  final String buttonName;
  final String icon;
  final Function onTap;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(13),
        ),
        // ignore: deprecated_member_use
        child: FlatButton.icon(
            onPressed: null,
            icon: Image(
              width: 24,
              image: Svg(icon),
            ),
            label: Text(
              buttonName,
              style: TextStyle(
                fontSize: 16,
                color: textColor,
              ),
              // style: kButtonText.copyWith(color: textColor),
            ),
        ),
      ),
    );
  }
}
