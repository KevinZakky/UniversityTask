import 'package:get/get.dart';
import 'package:latihan_modul3/app/modules/home/views/TodosPage.dart';

import '../modules/home/bindings/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => TodosPage(),
      binding: HomeBinding(),
    ),
  ];
}
