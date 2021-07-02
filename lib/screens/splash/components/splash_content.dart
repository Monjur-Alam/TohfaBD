import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        RotatedBox(
          quarterTurns: 4,
          child: SvgPicture.asset('assets/images/logo.svg',
              semanticsLabel: 'App Logo'),
        ),
        SizedBox(height: 20),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: 256,
          width: 235,
        ),
      ],
    );
  }
}
