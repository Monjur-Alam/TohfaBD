import 'package:flutter/material.dart';
import 'package:shop_app/components/circle_image.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/viewmodels/product_view_model.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final ProductViewModel productViewModel;
  Body({@required this.productViewModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ProductImages(product: product), next
        Container(
          height: 200,
          child: CircleImage(
            imageUrl: productViewModel.product_img_url,
          ),
        ),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                  productViewModel: productViewModel,
                // pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    // ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          // left: SizeConfig.screenWidth * 0.15,
                          // right: SizeConfig.screenWidth * 0.15,
                          left: 20,
                          right: 20,
                          bottom: 40,
                          top: 15,
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
