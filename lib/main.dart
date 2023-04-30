import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:getx_demo/NetworkHelper/internet_checker_module/bindings/network_binding.dart';
import 'package:getx_demo/Routes/routes_manage.dart';
import 'package:getx_demo/Routes/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.demoScreen,
      getPages: appPages,
      initialBinding: NetworkBinding(),
    );
  }
}

