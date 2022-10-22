import 'package:ecommerce_app/controllers/popular_product_controller.dart';
import 'package:ecommerce_app/pages/food/recommended_food_detail.dart';
import 'package:ecommerce_app/pages/home/food_page_body.dart';
import 'package:ecommerce_app/pages/home/main_food_pages.dart';
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
    return GetMaterialApp(
      title: 'ECOMMERCE APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MainFoodPage(),
    );
  }
}
