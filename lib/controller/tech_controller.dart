import 'package:demo_project/models/news_model.dart';
import 'package:demo_project/services/api/http_req.dart';
import 'package:get/get.dart';

class TechController extends GetxController {
  HttpRequest httpRequest = HttpRequest();
  var techList = Rx<List<NewsModel>>([]);

  getApiData() async {
    techList.value = [];
    techList.value = await httpRequest.getNews(query: "technology");
  }

  @override
  void onInit() {
    getApiData();
    super.onInit();
  }
}
