import 'package:flutter/cupertino.dart';
import 'package:frontend/models/products_model.dart';
import 'package:get/get_connect.dart';
import 'package:get/state_manager.dart';

import '../data/repository/recommended_product_repo.dart';

class RecommendedProductController extends GetxController {
  // Instance of PopularProductRepo Class.
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});

  // Data come from repo will save in _popularProductList below.
  List<ProductModel> _recommendedProductList = [];
  List<ProductModel> get recommendedProductList => _recommendedProductList;

  // For data lode
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    // We use Response because repo is sending Response type data and await is use becuase it return Future type data, so we need wait unitl we get data.
    Response response = await recommendedProductRepo.getRecommendedProductList();

    // Repo return wheather correnct response or fail response. statusCode 200 is successfull.
      if (response.statusCode == 201 || response.statusCode == 200) {
      debugPrint("got products");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      // debugPrint(_popularProductList.toString());
      _isLoaded = true;
      update();
    } else {
      debugPrint("Could not got products");

    }
  }
}
