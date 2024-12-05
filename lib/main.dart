import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/new_service.dart';
import 'package:news_app/views/homeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}