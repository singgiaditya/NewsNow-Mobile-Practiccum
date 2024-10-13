class NewsModel {
  final String? title;
  final String? author;
  final String? content;
  final String? image;
  final DateTime? publishedAt;

  NewsModel(
      {required this.title,
      required this.author,
      required this.content,
      required this.image,
      required this.publishedAt});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      author: json['author'],
      content: "${json['description']}\n\n${json['content']}",
      image: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
    );
  }
}
