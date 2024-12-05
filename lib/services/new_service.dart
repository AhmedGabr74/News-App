import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewService {
  final Dio dio;
  NewService(this.dio);

   Future<List<ArticalModel>> getNews({required String caterory}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3701d7745bb14e81af0b1ad9e1b791d9&category=$caterory'
      );
      Map<String,dynamic> jsonData = response.data;
      List<dynamic> aricals = jsonData['articles'];
      List<ArticalModel> articles = [];
      for (var article in aricals) {
        ArticalModel articleModel = ArticalModel.fromjson(article);

        articles.add(articleModel);
      };
         return articles;
    }  catch (e) {
      // TODO
      return [];
    }
  }
}











