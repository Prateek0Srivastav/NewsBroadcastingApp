import 'package:demo_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/tech_controller.dart';

class TechPage extends StatelessWidget {
  final _techCont = Get.find<TechController>();

  TechPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => RefreshIndicator(
              onRefresh: () => _techCont.getApiData(),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsCard(newsModel: _techCont.techList.value[index]);
                },
                itemCount: _techCont.techList.value.length,
              ),
            )));
  }
}
