import 'package:myapp/core/constant/api.dart';
import 'package:myapp/models/news_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchingNews {
  static Future<List<NewsModel>> getNews() async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    var uri = Uri.parse(getNewsApi);
    var response = await http.get(uri, headers: headers);
    var data = jsonDecode(response.body);
    List<NewsModel> news = List<NewsModel>.from(
        data['articles'].map((e) => NewsModel.fromJson(e)));
    return news;
  }
}
