import 'package:flutter/material.dart';
import 'package:shop_app/viewmodels/product_view_model.dart';

import '../../models/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductViewModel productViewModel;
  ProductDetailsScreen({@required this.productViewModel});

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: productViewModel.product_rating),
      body: Body(productViewModel: productViewModel),
    );
  }
}
