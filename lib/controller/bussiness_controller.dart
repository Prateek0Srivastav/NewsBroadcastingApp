import 'package:demo_project/models/news_model.dart';
import 'package:demo_project/services/api/http_req.dart';
import 'package:get/get.dart';

class BussinessController extends GetxController {
  HttpRequest httpRequest = HttpRequest();
  var bussinessList = Rx<List<NewsModel>>([]);

  getApiData() async {
    // debugPrint("Called => BussinessController - getApiData");
    bussinessList.value = [];
    // debugPrint("Len ${bussinessList.value.length}");
    // await Future.delayed(const Duration(seconds: 10));
    bussinessList.value = await httpRequest.getNews(query: "business");
  }

  @override
  void onInit() {
    getApiData();
    super.onInit();
  }
}
