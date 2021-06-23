import 'package:flutter/material.dart';
import 'package:shop_app/models/news_article.dart';
import 'package:shop_app/services/web_service.dart';
import 'package:shop_app/viewmodels/news_article_view_model.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
}

class NewsArticleListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.searching;
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();
  void topHeadlines() async {
    List<NewsArticle> newsArticles = await WebService().fetchTopHeadlines();
    notifyListeners();
    this.articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();
    if (this.articles.isEmpty) {
      this.loadingStatus = LoadingStatus.empty;
    } else {
      this.loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
