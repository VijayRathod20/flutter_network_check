
import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class NetworkController extends GetxController {
  var connectionStatus = 0.obs;
  final Connectivity _connectivity = Connectivity();



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initConnectivity();
    _connectivity.onConnectivityChanged.listen(_updateConnectStatus);
  }

  initConnectivity() async {
    ConnectivityResult result;
    try{
      result = await _connectivity.checkConnectivity();
      return _updateConnectStatus(result);
    }on PlatformException catch(e){
      print(e.toString());
    }

  }

  _updateConnectStatus(ConnectivityResult result){
    switch(result){
      case ConnectivityResult.wifi:
        connectionStatus.value = 1;
        break;
      case ConnectivityResult.mobile:
        connectionStatus.value = 2;
        break;
      case ConnectivityResult.none:
        connectionStatus.value = 0;
        Get.showSnackbar(const GetSnackBar(title: "No Internet",message: "Plz check internet",duration: Duration(seconds: 3),),);
        break;
      default:
        Get.snackbar("NetWork Error", "Failed to get network connection");
        break;
    }
  }
}