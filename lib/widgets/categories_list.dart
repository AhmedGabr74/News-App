import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'category_card.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});
  List<CategoryModel> categorys =const[
    CategoryModel( name: 'Sports', image: 'assets/sports.avif'),
    CategoryModel( name: 'Business', image: 'assets/business.avif'),
    CategoryModel( name: 'technology', image: 'assets/technology.jpeg'),
    CategoryModel( name: 'Health', image: 'assets/health.avif'),
    CategoryModel( name: 'Science', image: 'assets/science.avif'),
    CategoryModel( name: 'Entertainment', image: 'assets/entertaiment.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(

        itemCount: categorys.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(category: categorys[index],);
        },
      ),
    );
  }
}
