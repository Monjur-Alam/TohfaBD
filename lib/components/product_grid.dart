import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/circle_image.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/category_product/news_article_detail_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/viewmodels/product_view_model.dart';

class ProductGrid extends StatelessWidget {
  final List<ProductViewModel> productList;

  ProductGrid({this.productList});

  void _showNewsArticleDetails(BuildContext context, ProductViewModel productViewModel) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ProductDetailsScreen(
        productViewModel: productViewModel,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: this.productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? 2
                  : 3),
      itemBuilder: (BuildContext _, int index) {
        final data = this.productList[index];

        return GestureDetector(
          onTap: () {
            _showNewsArticleDetails(context, data);
          },
          child: Card(
            margin: EdgeInsets.all(10),
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
                    height: 100,
                    child: CircleImage(
                      imageUrl: data.product_img_url,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data.product_name,
                    style: TextStyle(color: Colors.black),
                    maxLines: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$' + data.product_sale_price,
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
