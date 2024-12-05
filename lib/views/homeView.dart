import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list.dart';
import 'package:news_app/widgets/news_list_view.dart';

import '../widgets/news_list_view_builder.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'New',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesList()),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 32,
            )),
            const NewsListView_builder(category: 'general',), //SliverToBoxAdapter(child: NewsListView()),
          ],
        ),
      ),
    );
  }
}
