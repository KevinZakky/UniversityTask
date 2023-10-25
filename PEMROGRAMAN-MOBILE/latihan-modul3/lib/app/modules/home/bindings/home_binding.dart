import 'package:get/get.dart';
import 'package:latihan_modul3/app/modules/home/controllers/HttpController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HttpController>(
      () => HttpController(),
    );
  }
}
