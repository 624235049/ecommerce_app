import 'package:ecommerce_app/src/pages/food/popular_food_detail.dart';
import 'package:ecommerce_app/src/pages/food/recommended_food_detail.dart';
import 'package:ecommerce_app/src/pages/home/main_food_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ECOMMERCE APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: RecommenededFoodDetail(),
    );
  }
}
