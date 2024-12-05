import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/new_service.dart';

import 'news_list_view.dart';

class NewsListViewBuilderStatfulwidget extends StatefulWidget {
  const NewsListViewBuilderStatfulwidget({super.key});

  @override
  State<NewsListViewBuilderStatfulwidget> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListViewBuilderStatfulwidget> {
  List<ArticalModel> articles = [];
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewService(Dio()).getNews(caterory: 'general');
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()))
        : articles.isNotEmpty ? NewsListView(
      articles: articles,
    ): const SliverToBoxAdapter(
      child: Center(child: Text('No news found')),
    );
  }
}
