import 'package:demo_project/models/news_model.dart';
import 'package:demo_project/services/api/http_req.dart';
import 'package:get/get.dart';

class EntertainmentController extends GetxController {
  HttpRequest httpRequest = HttpRequest();
  var entertainmentList = Rx<List<NewsModel>>([]);

  getApiData() async {
    entertainmentList.value = [];
    entertainmentList.value = await httpRequest.getNews(query: "entertainment");
  }

  @override
  void onInit() {
    getApiData();
    super.onInit();
  }
}
