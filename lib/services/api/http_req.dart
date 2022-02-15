import 'package:demo_project/constants/strings.dart';
import 'package:demo_project/models/news_model.dart';
import 'package:get/get.dart';

class HttpRequest extends GetConnect {
  Future<List<NewsModel>> getNews({required query}) async {
    List<NewsModel> _newsList = [];
    Response response = await get(
        "https://newsapi.org/v2/everything?q=$query&apiKey=${AppConfig.apiKey}");

    if (response.statusCode == 200) {
      var articles = response.body["articles"];

      for (var article in articles) {
        _newsList.add(NewsModel.fromJson(article));
      }
    }
    return _newsList;
  }
}
