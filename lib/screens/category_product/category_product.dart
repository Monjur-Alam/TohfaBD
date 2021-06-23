import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/news_grid.dart';
import 'package:shop_app/screens/home/components/search_product.dart';
import 'package:shop_app/viewmodels/news_article_list_view_model.dart';

class CategoryProduct extends StatefulWidget {
  static String routeName = "/payment";
  @override
  _CategoryProductState createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {

  @override
  void initState() {
    super.initState();
    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .topHeadlines();
  }

  Widget _buildList(NewsArticleListViewModel vs) {
    switch (vs.loadingStatus) {
      case LoadingStatus.searching:
        return Center(
          child: CircularProgressIndicator(),
        );
      case LoadingStatus.completed:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: NewsGrid(
            articles: vs.articles,
          ),
        );
      case LoadingStatus.empty:
      default:
        return Center(
          child: Text("No results found"),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    var vs = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SearchProduct(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 0, bottom: 15),
              child: Text(
                'Category Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: _buildList(vs),
            ),
          ],
        ),
      ),
    );
  }
}
