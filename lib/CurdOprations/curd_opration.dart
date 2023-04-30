import 'dart:io';
import 'package:multiple_result/multiple_result.dart';
import 'package:get/get.dart';

class CurdOperation extends GetConnect{
  static Future<Result<dynamic,Exception>> getData(url) async {
    try{
      Response response = await GetConnect().get(url);
      return response.statusCode == 200 ? Success(response.body): Error(Exception("check internet"));
    }on SocketException catch (e){
      return Error(e);
    }
  }
}