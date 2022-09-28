import 'package:get/get.dart';

// Responsive
class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.44;
  static double pageViewContainer = screenHeight / 3.55;
  static double pageViewTextContainer = screenHeight / 7.03;
  //screen height == 781 / มาหารกับ ขนาด กว้าง สูง

  //dynamic height padding and margin
  static double height10 = screenHeight / 78.1;
  static double height15 = screenHeight / 52.06;
  static double height20 = screenHeight / 39.05;
  static double height30 = screenHeight / 26.03;
  static double height45 = screenHeight / 17.35;

  //dynamic width padding and margin
  static double width10 = screenHeight / 78.1;
  static double width15 = screenHeight / 52.06;
  static double width20 = screenHeight / 39.05;
  static double width30 = screenHeight / 26.03;

  static double font20 = screenHeight / 39.05;

  //dynamic redius
  static double radius20 = screenHeight / 39.05;
  static double radius15 = screenHeight / 52.06;
  static double radius30 = screenHeight / 26.03;

  //icon Size

  static double iconSize24 = screenHeight / 32.54;
}
