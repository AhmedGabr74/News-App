class ArticalModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;

  const ArticalModel(
      {required this.image, required this.title, required this.subtitle, required this.url});

  factory ArticalModel.fromjson(json){
    return ArticalModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
      url: json['url'],
    );
  }
}
