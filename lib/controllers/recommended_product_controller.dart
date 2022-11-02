import 'package:ecommerce_app/data/repository/recommended_product_repo.dart';
import 'package:ecommerce_app/model/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      // print("get products recommended");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);

      _isLoaded = true;
      update();
    } else {
      print("Could not get products recommended");
    }
  }
}
