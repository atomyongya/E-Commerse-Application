import 'package:frontend/data/api/api_client.dart';
import 'package:get/get_connect.dart';
import 'package:get/state_manager.dart';

class PopularProductRepo extends GetxService {
  // Repo talk with the API Client and that is related to internet. So, required "GetxService".
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("end point url");
  }
}
