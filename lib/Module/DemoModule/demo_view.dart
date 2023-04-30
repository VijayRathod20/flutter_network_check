import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:getx_demo/Module/DemoModule/demo_controller.dart';
import 'package:getx_demo/NetworkHelper/internet_checker_module/controllers/network_controller.dart';

class DemoScreen extends GetView<DemoController> {
  DemoScreen({Key? key}) : super(key: key);

  final NetworkController networkController = Get.find<NetworkController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: controller.obx(
                  (state) => SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            leading: Text(state[index].id.toString()),
                            title: Text(state[index].title.toString()));
                      },
                      separatorBuilder: (context, index) => const Divider(),
                    ),
                  ],
                ),
              ),
              onError: (error) => Center(
                child: Text(error.toString()),
              ),
              onLoading: const Center(
                child: CircularProgressIndicator(),
              )),
    ));
  }
}
