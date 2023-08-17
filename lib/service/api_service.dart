import 'dart:convert';

import 'package:http/http.dart';

import '../model/news_model.dart';

class ApiService {
  final all_news_url =
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=3a4000f8625e4e86a1a09bf38eee0b06';
  final braking_news_url =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=3a4000f8625e4e86a1a09bf38eee0b06';

  Future<List<NewsModel>> getAllNews() async {
    try {
      Response response = await get(Uri.parse(all_news_url));
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        List<dynamic> body = json['articles'];
        List<NewsModel> articlesList =
            body.map((item) => NewsModel.fromJson(item)).toList();
        print(body);
        return articlesList;
      } else {
        throw ("No news forund");
      }
    } catch (e) {
      throw e;
    }
  }
}
