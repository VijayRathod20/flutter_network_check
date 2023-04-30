
import 'package:get/get.dart';
import 'package:getx_demo/NetworkHelper/internet_checker_module/controllers/network_controller.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<NetworkController>(() => NetworkController());
  }

}