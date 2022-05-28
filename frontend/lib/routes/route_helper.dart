import 'package:frontend/pages/food/popular_food_detail.dart';
import 'package:frontend/pages/food/recommended_food_detail.dart';
import 'package:frontend/pages/home/mainfoodpage.dart';
import 'package:get/route_manager.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";

  static String getInitial() => "$initial";
  static String getPopularFood() => "$popularFood";
  static String getRecommendedFood() => "$recommendedFood";

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => const MainFoodPage()),
    GetPage(
      name: popularFood,
      page: () {
        return const PopularFoodDetail();
      },
      transition: Transition.fadeIn,
    ),

    // For Recommended page link
    GetPage(
      name: recommendedFood,
      page: () {
        return const RecommendedFoodDetail();
      },
      transition: Transition.fadeIn,
    ),
  ];
}
