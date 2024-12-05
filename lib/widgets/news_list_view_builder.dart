import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/new_service.dart';

import 'news_list_view.dart';

class NewsListView_builder extends StatefulWidget {
  const NewsListView_builder({super.key, required this.category});

  final String category;
  @override
  State<NewsListView_builder> createState() => _NewsListView_builderState();
}

class _NewsListView_builderState extends State<NewsListView_builder> {

  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewService(Dio()).getNews(caterory: widget.category);
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data ?? [],
            );
          }
          else if(snapshot.hasError){
            return const SliverToBoxAdapter(
              child: Center(child: Text('there is error, please try later')),
            );
          }
          else
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
        });
  }
}
