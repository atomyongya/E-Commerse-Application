// Creating method
import 'package:frontend/controllers/propular_product_controller.dart';
import 'package:frontend/data/repository/popular_product_repo.dart';
import "package:get/get.dart";
import "../data/api/api_client.dart";

Future<void> init() async {
  // api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://google.com"));

  // Repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
