import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/circle_image.dart';
import 'package:shop_app/screens/category_product/news_article_detail_screen.dart';
import 'package:shop_app/viewmodels/news_article_view_model.dart';

class NewsGrid extends StatelessWidget {
  final List<NewsArticleViewModel> articles;

  NewsGrid({this.articles});

  void _showNewsArticleDetails(BuildContext context, NewsArticleViewModel vm) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return NewsArticleDetailScreen(
        article: vm,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: this.articles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? 2
                  : 3),
      itemBuilder: (BuildContext _, int index) {
        final article = this.articles[index];

        return GestureDetector(
          onTap: () {
            _showNewsArticleDetails(context, article);
          },
          child: GridTile(
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
              child: CircleImage(
                imageUrl: article.imageUrl,
              ),
            ),
            footer: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              child: Text(
                article.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        );
      },
    );
  }
}
