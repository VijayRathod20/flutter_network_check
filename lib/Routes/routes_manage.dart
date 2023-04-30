import 'package:get/get.dart';
import 'package:getx_demo/Module/DemoModule/demo_binding.dart';
import 'package:getx_demo/Module/DemoModule/demo_view.dart';
import 'package:getx_demo/Routes/routes_names.dart';

final appPages = [
  GetPage(
      name: Routes.demoScreen,
      page: () => DemoScreen(),
      binding: DemoBinding(),
  ),
];