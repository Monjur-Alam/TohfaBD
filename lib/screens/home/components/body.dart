import 'package:flutter/material.dart';
import 'package:shop_app/components/app_bar.dart';
import 'package:shop_app/screens/home/components/TopPromoSlider.dart';
import 'package:shop_app/screens/home/components/search_product.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // HomeHeader(),
            SetAppBar(),
            SearchProduct(),
            // DiscountBanner(),
            TopPromoSlider(),
            SizedBox(height: getProportionateScreenWidth(5)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}