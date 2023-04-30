import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_demo/ApiService/api_service.dart';

import '../../Models/demo_model.dart';
class DemoController extends GetxController with StateMixin{
  List<DemoModel> userData = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserData();
  }

  getUserData() async {
    change(null,status: RxStatus.loading());
    final response = await APIService.userDemoData();
    response.when((success){
      userData.addAll(success.map((e)=>DemoModel.fromJson(e)).cast<DemoModel>());
      change(userData,status: RxStatus.success());
    },(error){
      change(null,status: RxStatus.error(error.toString()));
    });
  }
}