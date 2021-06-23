import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Bill Icon.svg", "text": "Most Popular"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Birthday"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Anniversary"},
      {"icon": "assets/icons/Discover.svg", "text": "Offers"},
      {"icon": "assets/icons/Flash Icon.svg", "text": "Urgent Delivery"},
      {"icon": "assets/icons/Discover.svg", "text": "Our Services"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              categories.length,
              (index) => CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                press: () {

                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: 55,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: kTextFieldBGColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
              SizedBox(height: 5),
              Text(text, textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
