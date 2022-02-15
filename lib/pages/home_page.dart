import 'package:demo_project/pages/bussiness_page.dart';
import 'package:demo_project/pages/health_page.dart';
import 'package:demo_project/pages/sport_page.dart';
import 'package:demo_project/pages/technology_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import 'entertainment_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("News App"),
              bottom: TabBar(
                isScrollable: true,
                onTap: (index) => controller.changeIndex(index),
                tabs: const [
                  Tab(
                    text: "Business",
                  ),
                  Tab(
                    text: "Technoloy",
                  ),
                  Tab(
                    text: "Health",
                  ),
                  Tab(text: "Entertainment"),
                  Tab(
                    text: "Sports",
                  )
                ],
              ),
            ),
            body: Obx(() => IndexedStack(
                  index: controller.currentIndex.value,
                  children: [
                    BussinessPage(),
                    TechPage(),
                    HealthPage(),
                    EntertainmentPage(),
                    SportPage(),
                  ],
                )),
          )),
    );
  }
}
