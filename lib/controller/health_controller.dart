import 'package:demo_project/models/news_model.dart';
import 'package:demo_project/services/api/http_req.dart';
import 'package:get/get.dart';

class HealthController extends GetxController {
  HttpRequest httpRequest = HttpRequest();
  var healthList = Rx<List<NewsModel>>([]);

  getApiData() async {
    healthList.value = [];
    healthList.value = await httpRequest.getNews(query: "health");
  }

  @override
  void onInit() {
    getApiData();
    super.onInit();
  }
}
