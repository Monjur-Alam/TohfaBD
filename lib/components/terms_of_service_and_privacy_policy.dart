import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsOfServiceAndPrivacyPolicy extends StatelessWidget {
  final bool login;
  final Function press;

  const TermsOfServiceAndPrivacyPolicy({Key key, this.login, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: login ? 'By logging in you confirm that you agree with our ' : 'By creating an account, you confirm that you agree with our ',
              style: TextStyle(fontSize: 14.0, color: Colors.black),
              recognizer: TapGestureRecognizer()..onTap = () {
                // Single tapped.
              },
            ),
            TextSpan(
                text: 'Terms of Service',
                style: TextStyle(fontSize: 15.0, color: Colors.blue[500]),
                recognizer:  TapGestureRecognizer()..onTap = press
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(fontSize: 14.0, color: Colors.black),
              recognizer: TapGestureRecognizer()..onTap = () {
                // Single tapped.
              },
            ),
            TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(fontSize: 15.0, color: Colors.blue[500]),
                recognizer:  TapGestureRecognizer()..onTap = press
            ),
          ],
        ),
      )

    );
  }
}
