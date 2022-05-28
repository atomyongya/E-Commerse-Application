import 'package:frontend/utils/app_constants.dart';
import 'package:get/get_connect.dart';
import 'package:get/state_manager.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token= AppConstants.TOKEN;
  final String? appBaseUrl; // Url of server
  // Map is like a dictonary in key pair value
  late Map<String, String> _mainHeaders;

  // Constructor of ApiClient class.
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(
        seconds: 30); // If data is not get or post in 30 second it will stop

    _mainHeaders = {
      // key : value
      'Content-type':
          'application/json; charset=UTF-8', // This line of code say that we want our data in json format
      'Authorization': 'Bearer $token', // bearer is type of token,
    };
  }

  // Creating Get Method
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
