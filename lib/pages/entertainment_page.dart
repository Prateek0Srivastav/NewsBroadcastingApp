import 'package:demo_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/entertainment_controller.dart';

class EntertainmentPage extends StatelessWidget {
  final _entertainmentCont = Get.find<EntertainmentController>();

  EntertainmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => RefreshIndicator(
              onRefresh: () => _entertainmentCont.getApiData(),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsCard(
                      newsModel:
                          _entertainmentCont.entertainmentList.value[index]);
                },
                itemCount: _entertainmentCont.entertainmentList.value.length,
              ),
            )));
  }
}
