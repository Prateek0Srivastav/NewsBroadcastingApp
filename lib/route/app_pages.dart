import 'package:demo_project/binding/home_bindings.dart';
import 'package:demo_project/pages/home_page.dart';
import 'package:demo_project/route/app_routes.dart';
import 'package:get/get.dart';

var pages = [
  GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: HomeBindings()),
];
