import 'package:ecommerce_app/pages/cart/cart_page.dart';
import 'package:ecommerce_app/pages/food/popular_food_detail.dart';
import 'package:ecommerce_app/pages/food/recommended_food_detail.dart';
import 'package:ecommerce_app/pages/home/main_food_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";
  static String getInitial() => '$initial';

  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';

  static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommenededFoodDetail(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
    GetPage(
        name: cartPage,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn),
  ];
}
