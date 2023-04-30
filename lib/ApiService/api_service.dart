

import 'package:getx_demo/CurdOprations/curd_opration.dart';
import 'package:getx_demo/utile/paths.dart';

class APIService{
  static userDemoData() async {
    return await CurdOperation.getData(baseUrl);
  }
}