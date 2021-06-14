import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

// Colors
const kBackgroundColor = Color(0xffFAFAFA);
const kTextFieldFill = Color(0xffFF1C24);
const kTextColor = Color(0xff000000);
const kDividerColor = Color(0xffc7c7c7);
const kButtonColor = Color(0xffE01E5A);
const kPrimaryColor = Color(0xffE01E5A);
const kTextFieldBGColor = Color(0xffFF22F9);
const kSecondaryColor = Color(0xFF979797);
// TextStyles
const kHeadline = TextStyle(
  color: Colors.black,
  fontSize: 28,
  fontWeight: FontWeight.bold,
);

const kBodyText = TextStyle(
  color: Colors.black,
  fontSize: 15,
);

const kButtonText = TextStyle(
  color: Colors.black87,
  fontSize: 16,
  fontWeight: FontWeight.normal,
);

const kBodyText2 = TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: Colors.black);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
