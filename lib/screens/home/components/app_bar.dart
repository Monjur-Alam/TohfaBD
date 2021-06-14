import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/set_icon.dart';
import 'package:shop_app/themes/theme.dart';

class SetAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: AppTheme.padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RotatedBox(
                quarterTurns: 4,
                child: SetIcon(icon: Icons.menu, color: kPrimaryColor)),
            RotatedBox(
              quarterTurns: 4,
              child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  semanticsLabel: 'App Logo'
              ),
            ),
            RotatedBox(
                quarterTurns: 4,
                child: SetIcon(icon: Icons.shopping_cart, color: kPrimaryColor)),
          ],
        ),
      ),
    );
  }
}
