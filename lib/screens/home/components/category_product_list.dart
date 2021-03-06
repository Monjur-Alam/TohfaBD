import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/circle_image.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/viewmodels/product_view_model.dart';

class CategoryProductsList extends StatelessWidget {
  final List<ProductViewModel> productList;

  CategoryProductsList({this.productList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: this.productList.length,
      itemBuilder: (BuildContext context, int index) {
        final data = this.productList[index];
        return GestureDetector(
          // onTap: () => Navigator.pushNamed(
          //   context,
          //   ProductDetailsScreen.routeName,
          //   // arguments: ProductDetailsArguments(),
          // ),
          child: Card(
            margin: EdgeInsets.only(left: 20, bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // AspectRatio(
                  //   aspectRatio: 1.02,
                  //   child: Container(
                  //     padding: EdgeInsets.all(20),
                  //     decoration: BoxDecoration(
                  //       color: kSecondaryColor.withOpacity(0.1),
                  //       borderRadius: BorderRadius.circular(15),
                  //     ),
                  //     child: Hero(
                  //       tag: 1.toString(),
                  //       child: Image.asset(product.images[0]),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: 150,
                    child: CircleImage(
                      imageUrl: data.product_img_url,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data.product_name,
                    style: TextStyle(color: Colors.black),
                    maxLines: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.product_sale_price,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: true
                                ? kPrimaryColor.withOpacity(0.15)
                                : kSecondaryColor.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/Heart Icon_2.svg",
                            color: true
                                ? Color(0xFFFF4848)
                                : Color(0xFFDBDEE4),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
