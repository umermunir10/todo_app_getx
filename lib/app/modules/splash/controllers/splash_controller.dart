import 'package:get/get.dart';
import 'package:todo_list_practice/app/routes/app_pages.dart';

class SplashController extends GetxController {
  void nextPage() {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.offNamed(Routes.todo));
  }

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}
