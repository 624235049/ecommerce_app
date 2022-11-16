import 'package:ecommerce_app/controllers/cart_controller.dart';
import 'package:ecommerce_app/controllers/popular_product_controller.dart';
import 'package:ecommerce_app/controllers/recommended_product_controller.dart';
import 'package:ecommerce_app/routes/route_helper.dart';
import 'package:ecommerce_app/utils/app_constants.dart';
import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/widgets/app_icon.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: Dimensions.height20 * 3,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                  iconColor: Colors.white,
                  backgroundColor: AppTheme.mainColor,
                  size: Dimensions.iconSize40,
                ),
                SizedBox(
                  width: Dimensions.width20 * 5,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: AppIcon(
                    icon: Icons.home,
                    iconColor: Colors.white,
                    backgroundColor: AppTheme.mainColor,
                    size: Dimensions.iconSize40,
                  ),
                ),
                AppIcon(
                  icon: Icons.shopping_cart,
                  iconColor: Colors.white,
                  backgroundColor: AppTheme.mainColor,
                  size: Dimensions.iconSize40,
                ),
              ],
            ),
          ),
          Positioned(
              top: Dimensions.height20 * 5,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height15),
                // color: Colors.red,
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: GetBuilder<CartController>(
                      builder: (cartController) {
                        var _cartList = cartController.getItems;
                        return ListView.builder(
                            itemCount: _cartList.length,
                            itemBuilder: (_, index) {
                              return Container(
                                width: double.maxFinite,
                                height: Dimensions.height20 * 5,
                                margin: EdgeInsets.only(
                                  bottom: Dimensions.height10,
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (() {
                                        var popularIndex =
                                            Get.find<PopularProductController>()
                                                .popularProductList
                                                .indexOf(
                                                    _cartList[index].product!);
                                        if (popularIndex >= 0) {
                                          Get.toNamed(
                                              RouteHelper.getPopularFood(
                                                  popularIndex, "cartpage"));
                                        } else {
                                          var recommendedIndex = Get.find<
                                                  RecommendedProductController>()
                                              .recommendedProductList
                                              .indexOf(
                                                  _cartList[index].product!);
                                          Get.toNamed(
                                              RouteHelper.getRecommendedFood(
                                                  recommendedIndex,
                                                  "cartpage"));
                                        }
                                      }),
                                      child: Container(
                                        width: Dimensions.height20 * 5,
                                        height: Dimensions.height20 * 5,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  AppConstants.BASE_URL +
                                                      AppConstants.UPLOAD_URL +
                                                      cartController
                                                          .getItems[index]
                                                          .img!)),
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.radius20),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Dimensions.width10,
                                    ),
                                    Expanded(
                                        child: Container(
                                      height: Dimensions.height20 * 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          BigText(
                                            text: cartController
                                                .getItems[index].name!,
                                            color: Colors.black54,
                                          ),
                                          SmallText(text: "Spicy"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: cartController
                                                    .getItems[index].price!
                                                    .toString(),
                                                color: Colors.redAccent,
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                  top: Dimensions.height10,
                                                  bottom: Dimensions.height10,
                                                  left: Dimensions.width10,
                                                  right: Dimensions.width10,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimensions.radius20),
                                                  color: Colors.white,
                                                ),
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        cartController.addItem(
                                                            _cartList[index]
                                                                .product!,
                                                            -1);
                                                      },
                                                      child: Icon(
                                                        Icons.remove,
                                                        color:
                                                            AppTheme.signColor,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          Dimensions.width10 /
                                                              2,
                                                    ),
                                                    // popularProduct.inCartItems.toString()
                                                    BigText(
                                                        text: _cartList[index]
                                                            .quantity
                                                            .toString()),
                                                    SizedBox(
                                                      width:
                                                          Dimensions.width10 /
                                                              2,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        cartController.addItem(
                                                            _cartList[index]
                                                                .product!,
                                                            1);
                                                      },
                                                      child: Icon(
                                                        Icons.add,
                                                        color:
                                                            AppTheme.signColor,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                              );
                            });
                      },
                    )),
              )),
        ],
      ),
      bottomNavigationBar: GetBuilder<CartController>(
        builder: (cartController) {
          return Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
              color: AppTheme.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: Dimensions.width10 / 2,
                      ),
                      BigText(
                          text: "\$ " + cartController.totalAmount.toString()),
                      SizedBox(
                        width: Dimensions.width10 / 2,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                    ),
                    child: BigText(
                      text: "Check out",
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppTheme.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
