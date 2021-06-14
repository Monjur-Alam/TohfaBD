import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/components/set_icon.dart';
import 'package:shop_app/themes/theme.dart';

import '../constants.dart';

class SetAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: AppTheme.padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // ignore: deprecated_member_use
            GestureDetector(
              child: SetIcon(icon: Icons.menu, color: kPrimaryColor),
              onTap: () {

              },
            ),
            RotatedBox(
              quarterTurns: 4,
              child: SvgPicture.asset('assets/images/logo.svg',
                  semanticsLabel: 'App Logo'),
            ),
            // ignore: deprecated_member_use
            GestureDetector(
              child: SetIcon(icon: Icons.shopping_cart, color: kPrimaryColor),
              onTap: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
