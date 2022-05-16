import "package:get/get.dart";

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double viewHeight = screenHeight / (screenHeight / 320);
  // total screenViewHeight = deviceHeight / 220
  static double pageViewContainer = Get.context!.height / (screenHeight / 220);
  static double pageViewTextContainer =
      Get.context!.height / (screenHeight / 120);

  static double height10 = screenHeight / (screenHeight / 10);
  static double height15 = screenHeight / (screenHeight / 15);
  static double height20 = screenHeight / (screenHeight / 20);
  static double height30 = screenHeight / (screenHeight / 30);
  static double height45 = screenHeight / (screenHeight / 45);

  static double width10 = screenWidth / (screenWidth / 10);
  static double width15 = screenWidth / (screenWidth / 15);
  static double width20 = screenWidth / (screenWidth / 20);
  static double width30 = screenWidth / (screenWidth / 30);

  // Font size
  static double font16 = screenHeight / (screenHeight / 16);
  static double font20 = screenHeight / (screenHeight / 20);
  static double font26 = screenHeight / (screenHeight / 26);

  // In flutter default size of icon is 24.
  static double icon24 = screenHeight / (screenHeight / 24);
  static double icon16 = screenHeight / (screenHeight / 16);

  static double radius20 = screenWidth / (screenWidth / 20);

  //  List View size
  static double listViewImgSize = screenWidth / (screenWidth / 120);
  static double listViewTextSize = screenWidth / (screenWidth / 100);

  // Popular food detail
  static double popularFoodImgSize = screenHeight / (screenHeight / 350);
  static double bottomHeightBar = screenHeight / (screenHeight / 120);
}
