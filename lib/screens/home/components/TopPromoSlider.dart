import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class TopPromoSlider extends StatelessWidget {
  final int animationDuration = 1000;
  final int autoplayDuration = 5000;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 127.0,
        width: double.infinity,
        child: Carousel(
          images: [
            Image.asset(
              "assets/images/promotion__one.png",
              height: double.infinity,
              width: double.infinity,
            ),
            Image.asset(
              "assets/images/promotion_two.png",
              height: double.infinity,
              width: double.infinity,
            ),
            Image.asset(
              "assets/images/promotion_three.png",
              height: double.infinity,
              width: double.infinity,
            ),
          ],
          dotSize: 5.0,
          dotSpacing: 15.0,
          dotColor: kButtonColor,
          indicatorBgPadding: 15.0,
          dotBgColor: Colors.black54.withOpacity(0.0),
          borderRadius: false,
          autoplay: true,
          radius: Radius.circular(20),
          moveIndicatorFromBottom: 180.0,
          noRadiusForIndicator: false,
          showIndicator: false,
          animationDuration: Duration(milliseconds: animationDuration),
          autoplayDuration: Duration(milliseconds: autoplayDuration),
        ),
      ),
    );
  }
}
