import 'package:flutter/material.dart';
import 'package:shop_app/components/news_grid.dart';
import 'package:shop_app/screens/home/components/TopPromoSlider.dart';
import 'package:shop_app/screens/home/components/categories.dart';
import 'package:shop_app/screens/home/components/category_product_list.dart';
import 'package:shop_app/screens/home/components/search_product.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/viewmodels/news_article_list_view_model.dart';

class HomeBody extends StatelessWidget {
  final NewsArticleListViewModel viewModel;

  const HomeBody({this.viewModel});

  Widget _buildAllProductList() {
    switch (viewModel.loadingStatus) {
      case LoadingStatus.searching:
        return Center(
          child: CircularProgressIndicator(),
        );
      case LoadingStatus.completed:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: NewsGrid(
            articles: viewModel.articles,
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
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        children: [
          // HomeHeader(),
          // SetAppBar(),
          SearchProduct(),
          SearchProduct(),
          SearchProduct(),
          // DiscountBanner(),
          TopPromoSlider(),
          Categories(),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: SectionTitle(
                title: "Most Popular",
                press: () {
                  // see more
                }),
          ),
          Expanded(child: CategoryProductsList()),
          // CategoryProductsList(),
          // SizedBox(height: getProportionateScreenWidth(5)),
          // SpecialOffers(),
          // SizedBox(height: getProportionateScreenWidth(30)),

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
          // SizedBox(height: getProportionateScreenWidth(30)),
        ],
      ),
    );
  }
}
