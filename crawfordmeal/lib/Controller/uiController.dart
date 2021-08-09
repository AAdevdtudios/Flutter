import 'package:get/get.dart';

class UiController extends GetxController{
  var tabIndex = 4.obs;

  void changeTab(int index){
    tabIndex.value = index;
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}