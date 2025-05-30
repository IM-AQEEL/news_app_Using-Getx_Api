class TodoAppModel {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  TodoAppModel({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
}

class Source {
  dynamic id;
  String name;

  Source({
    required this.id,
    required this.name,
  });
}
