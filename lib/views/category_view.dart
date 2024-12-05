import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder_statfulwidget.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CustomScrollView(
                slivers: [
          NewsListView_builder(category: category),
                ],
              ),
        ));
  }
}
