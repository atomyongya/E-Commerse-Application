// Creating method
import 'package:frontend/controllers/propular_product_controller.dart';
import 'package:frontend/controllers/recommended_product_controller.dart';
import 'package:frontend/data/repository/popular_product_repo.dart';
import 'package:frontend/data/repository/recommended_product_repo.dart';
import 'package:frontend/utils/app_constants.dart';
import "package:get/get.dart";
import "../data/api/api_client.dart";

Future<void> init() async {
  // api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // Repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));

}
