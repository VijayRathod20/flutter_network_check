import 'package:get/get.dart';
import 'package:getx_demo/Module/DemoModule/demo_controller.dart';

class DemoBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DemoController>(() => DemoController());
  }

}