import 'package:flutter/material.dart';
import 'package:shop_app/components/already_have_an_account_check.dart';
import 'package:shop_app/components/my_text_button_with_icon.dart';
import 'package:shop_app/components/or_divider.dart';
import 'package:shop_app/components/socal_card.dart';
import 'package:shop_app/components/terms_of_service_and_privacy_policy.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        reverse: true,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Column(
                      children: [
                        SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                        Text("Sign up for free today", style: headingStyle),
                        Text(
                          "Complete your details or continue \nwith social media",
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 0.05),
                        SignUpForm(),
                        SizedBox(height: SizeConfig.screenHeight * 0.03),
                        TermsOfServiceAndPrivacyPolicy(
                            login: true,
                            press: () {
                              print('Click');
                            }),
                        SizedBox(height: SizeConfig.screenHeight * 0.01),
                        OrDivider(),
                        MyTextIconButton(
                          icon: 'assets/icons/facebook-2.svg',
                          buttonName: 'Sign Up with Facebook',
                          onTap: () {},
                          bgColor: kButtonColor,
                          textColor: Colors.white,
                        ),
                        MyTextIconButton(
                          icon: 'assets/icons/google-icon.svg',
                          buttonName: 'Sign Up with Google',
                          onTap: () {},
                          bgColor: kButtonColor,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: 20),
                        AlreadyHaveAnAccountCheck(
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignInScreen();
                            }));
                          },
                          login: false,
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
