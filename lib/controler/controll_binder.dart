import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies(){
    Get.put(NavBarController());
  }
}