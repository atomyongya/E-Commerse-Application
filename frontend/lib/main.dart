// Importing inbuilt class and module.
import "package:flutter/material.dart";
import 'package:frontend/controllers/propular_product_controller.dart';
import 'package:frontend/controllers/recommended_product_controller.dart';
import 'package:frontend/pages/home/mainfoodpage.dart';
import 'package:frontend/routes/route_helper.dart';
import "package:get/get.dart";
import "helper/dependencies.dart" as dep;

// Importing the dart file that we create
// import "../pages/home/mainfoodpage.dart";
// import 'package:frontend/pages/food/popular_food_detail.dart';

// Creating main() function from where compilation start.
Future<void> main() async {
  // WidgetsFlutterBinding make sure that your dependencies are loaded.
  WidgetsFlutterBinding.ensureInitialized();
  // wait until it loaded.
  await dep.init();
  runApp(const FoodApplication());
}

// Creating FoodApplication class.
class FoodApplication extends StatefulWidget {
  const FoodApplication({Key? key}) : super(key: key);
  @override
  State<FoodApplication> createState() => _FoodApplication();
}

class _FoodApplication extends State<FoodApplication> {
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Application",
      home: const MainFoodPage(),
      // initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}


// In 8.04.08