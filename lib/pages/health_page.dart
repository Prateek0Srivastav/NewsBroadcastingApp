import 'package:demo_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/health_controller.dart';

class HealthPage extends StatelessWidget {
  final _healthCont = Get.find<HealthController>();

  HealthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => RefreshIndicator(
              onRefresh: () => _healthCont.getApiData(),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsCard(
                      newsModel: _healthCont.healthList.value[index]);
                },
                itemCount: _healthCont.healthList.value.length,
              ),
            )));
  }
}
