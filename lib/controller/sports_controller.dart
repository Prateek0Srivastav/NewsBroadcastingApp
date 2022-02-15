import 'package:demo_project/models/news_model.dart';
import 'package:demo_project/services/api/http_req.dart';
import 'package:get/get.dart';

class SportController extends GetxController {
  HttpRequest httpRequest = HttpRequest();
  var sportList = Rx<List<NewsModel>>([]);

  getApiData() async {
    sportList.value = [];
    sportList.value = await httpRequest.getNews(query: "sport");
  }

  @override
  void onInit() {
    getApiData();
    super.onInit();
  }
}
