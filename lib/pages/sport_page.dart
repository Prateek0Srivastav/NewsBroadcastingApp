import 'package:demo_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/sports_controller.dart';

class SportPage extends StatelessWidget {
  final _sportCont = Get.find<SportController>();

  SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => RefreshIndicator(
              onRefresh: () => _sportCont.getApiData(),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsCard(newsModel: _sportCont.sportList.value[index]);
                },
                itemCount: _sportCont.sportList.value.length,
              ),
            )));
  }
}
