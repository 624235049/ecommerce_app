import 'package:ecommerce_app/controllers/popular_product_controller.dart';
import 'package:ecommerce_app/controllers/recommended_product_controller.dart';
import 'package:ecommerce_app/pages/cart/cart_page.dart';
import 'package:ecommerce_app/pages/home/main_food_pages.dart';
import 'package:ecommerce_app/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      title: 'ECOMMERCE APP',
      debugShowCheckedModeBanner: false,
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
