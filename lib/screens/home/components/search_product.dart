import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/set_icon.dart';
import 'package:shop_app/themes/light_color.dart';
import 'package:shop_app/themes/theme.dart';

class SearchProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppTheme.padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: kTextFieldBGColor,
                  borderRadius: BorderRadius.all(Radius.circular(13))
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Products",
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.only(left: 0, right: 10, bottom: 0, top: 5),
                    prefixIcon: Icon(Icons.search, color: kPrimaryColor)),
              ),
            ),
          ),
          SizedBox(width: 20),
          SetIcon(icon: Icons.filter_list, color: kPrimaryColor)
        ],
      ),
    );
  }
}
