import 'package:flutter/material.dart';
import 'package:shop_app/components/product_grid.dart';
import 'package:shop_app/screens/home/components/TopPromoSlider.dart';
import 'package:shop_app/screens/home/components/categories.dart';
import 'package:shop_app/screens/home/components/category_product_list.dart';
import 'package:shop_app/screens/home/components/search_product.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/screens/home/components/special_offers.dart';
import 'package:shop_app/viewmodels/product_list_view_model.dart';

class HomeBody extends StatelessWidget {
  final ProductListViewModel productListViewModel;

  const HomeBody({this.productListViewModel});

  Widget _buildCategoryProductList() {
    switch (productListViewModel.loadingStatus) {
      case LoadingStatus.searching:
        return Center(
          child: CircularProgressIndicator(),
        );
      case LoadingStatus.completed:
        return CategoryProductsList(
          productList: productListViewModel.productList,
        );
      case LoadingStatus.empty:
        return Center(
          child: Text("No results found"),
        );
      default:
        return Center(
          child: Text("No results found"),
        );
    }
  }

  Widget _buildAllProductList() {
    switch (productListViewModel.loadingStatus) {
      case LoadingStatus.searching:
        return Center(
          child: CircularProgressIndicator(),
        );
      case LoadingStatus.completed:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ProductGrid(
            productList: productListViewModel.productList,
          ),
        );
      case LoadingStatus.empty:
        return Center(
          child: Text("No results found"),
        );
      default:
        return Center(
          child: Text("No results found"),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // HomeHeader(),
          // SetAppBar(),
          SearchProduct(),
          // DiscountBanner(),
          TopPromoSlider(),
          Categories(),
          // Padding(
          //   padding:
          //   const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
          //   child: SectionTitle(
          //       title: "Most Popular",
          //       press: () {
          //         // see more
          //       }),
          // ),
          // Expanded(child: _buildCategoryProductList()),
          // CategoryProductsList(),
          // SizedBox(height: 5),
          SpecialOffers(),
          // SizedBox(height: 30),

          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: SectionTitle(
                title: "All Products",
                press: () {
                  // see more
                }),
          ),
          Expanded(
            child: _buildAllProductList(),
          ),
          // SizedBox(height: 30),
        ],
      ),
    );
  }
}
