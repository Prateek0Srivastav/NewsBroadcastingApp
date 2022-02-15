class NewsModel {
  final String title;
  final String img;
  final String desc;
  final String author;
  final String url;

  NewsModel({
    required this.author,
    required this.desc,
    required this.img,
    required this.title,
    required this.url,
  });

  static NewsModel fromJson(map) {
    return NewsModel(
        author: map["author"] ?? "",
        desc: map["description"] ?? "",
        img: map["urlToImage"] ?? "",
        title: map["title"] ?? "",
        url: map["url"] ?? "");
  }
}
