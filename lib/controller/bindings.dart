import 'package:cbt_test/controller/questions_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionsController());
  }
}
