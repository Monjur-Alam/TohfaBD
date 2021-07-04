import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class Constants {
  static const String API_KEY = '97604a4cfe784fc7a9ae242ac28b2c87';
  static const String BASE_URL = 'https://api.airposted.com/api/';
  static const String PRODUCT_LIST = BASE_URL + 'v1/get_product_list';
  static const String TOKEN = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjBjN2JkZjEyZWU4NjlmZmJjMWY4YjM3YTNjM2MxYjFmMzY5MzFmYjJmNzU4MDBlZGQzZDUzMWRhZWU0YjJjODhjMDljOTQwMmMwMjE5NWRmIn0.eyJhdWQiOiIxIiwianRpIjoiMGM3YmRmMTJlZTg2OWZmYmMxZjhiMzdhM2MzYzFiMWYzNjkzMWZiMmY3NTgwMGVkZDNkNTMxZGFlZTRiMmM4OGMwOWM5NDAyYzAyMTk1ZGYiLCJpYXQiOjE2MjUzMjU2MDAsIm5iZiI6MTYyNTMyNTYwMCwiZXhwIjoxOTQwODU4Mzk5LCJzdWIiOiIzNDc0MyIsInNjb3BlcyI6W119.S7PE4tRamJmMNci5oCM7SguNh1TdxzMRLwnNP0Uku8hRmC5EP016Yv_PmPVe68QmkwiwcHnAUzQ7kynMkSlrWIHrmH2ZPgZ-SIqvWJBebpp1sZhoQyJzSICp3ts02N8U08XHWvJK0L6nPdDx9NYD4-NQtt1MK8Cyeix7eox4cevtpxpLDWX35IlmvfLUVmZRTOZUGTN3ovRBlVeTC4Xt-T7d-5UKHYArhHA0_LCm_nIkGaTD3D1eeq0_lWK2l7NNELyzmsWpgwV9g7gIWWqXENhsCau4gWwOMNsWoGj4pODF76pcj0r_y1WJp-61DPLOdD1n4waWXXAcUo-x_vWvC9R_YXYmZEJ20fbjphmPL9tf3D7zu-XW8gSAPLeye7qNyLDuaNswe7A7v5O6xgj1raR6pH3tWB8QGg6TXmoRUAyhQXeqfaFmjiN_f7f2ZedhUz9eTdm5eUmBsbtq-z4Is-sEePE5SR07mGKU6lLMw99Tr_sn7deVjKnxoKSuAytIHRjUJETajXW23StDxS7po3ldIJiDq8x9vGIkXssQpHc64Xu1EgAYv_H9Ru7ErHvZ1E36LjUzZy7MKwcQLgi0hGmDmYNphAueMRUqpbSAYEh-6K_aIrx3C8vZ2or-wmfQDlcubSWspiyjOan48b1ZWMY4njsz96NHebe3sOv_uLo';
}

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
const kTextFieldBGColor = Color(0xFFFFF8F9);
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
  fontSize: 28,
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
      EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}
