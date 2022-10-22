import 'package:ecommerce_app/controllers/popular_product_controller.dart';
import 'package:ecommerce_app/data/api/api_class.dart';
import 'package:ecommerce_app/data/repository/popular_product_repo.dart';
import 'package:ecommerce_app/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //resposne
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
