import 'package:demo_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bussiness_controller.dart';

class BussinessPage extends StatelessWidget {
  final _busiCont = Get.find<BussinessController>();

  BussinessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => RefreshIndicator(
              onRefresh: () => _busiCont.getApiData(),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return NewsCard(
                      newsModel: _busiCont.bussinessList.value[index]);
                },
                itemCount: _busiCont.bussinessList.value.length,
              ),
            )));
  }
}
