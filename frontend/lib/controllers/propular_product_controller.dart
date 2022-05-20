import 'package:frontend/data/repository/popular_product_repo.dart';
import 'package:frontend/models/products_model.dart';
import 'package:get/get_connect.dart';
import 'package:get/state_manager.dart';

class PopularProductController extends GetxController {
  // Instance of PopularProductRepo Class.
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  // Data come from repo will save in _popularProductList below.
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    // We use Response because repo is sending Response type data and await is use becuase it return Future type data, so we need wait unitl we get data.
    Response response = await popularProductRepo.getPopularProductList();

    // Repo return wheather correnct response or fail response. statusCode 200 is successfull.
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update();
    } else {}
  }
} 
