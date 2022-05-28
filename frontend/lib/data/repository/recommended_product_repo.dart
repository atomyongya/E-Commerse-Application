import 'package:frontend/data/api/api_client.dart';
import 'package:frontend/utils/app_constants.dart';
import 'package:get/get_connect.dart';
import 'package:get/state_manager.dart';

class RecommendedProductRepo extends GetxService {
  // Repo talk with the API Client and that is related to internet. So, required "GetxService".
  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
