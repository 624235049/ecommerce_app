import 'package:ecommerce_app/controllers/cart_controller.dart';
import 'package:ecommerce_app/controllers/popular_product_controller.dart';
import 'package:ecommerce_app/controllers/recommended_product_controller.dart';
import 'package:ecommerce_app/pages/cart/cart_page.dart';
import 'package:ecommerce_app/routes/route_helper.dart';
import 'package:ecommerce_app/utils/app_constants.dart';
import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/widgets/app_icon.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommenededFoodDetail extends StatelessWidget {
  final int pageId;
  const RecommenededFoodDetail({Key? key, required this.pageId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    Get.find<PopularProductController>()
        .initProduct(product, Get.find<CartController>());
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: AppIcon(icon: Icons.clear),
                ),
                // AppIcon(icon: Icons.shopping_cart_outlined),
                GetBuilder<PopularProductController>(
                  builder: (controller) {
                    return GestureDetector(
                      onTap: () {
                        if (controller.totalItems >= 1) {
                          Get.toNamed(RouteHelper.getCartPage());
                        }
                      },
                      child: Stack(
                        children: [
                          AppIcon(icon: Icons.shopping_cart_outlined),
                          Get.find<PopularProductController>().totalItems >= 1
                              ? Positioned(
                                  right: 0,
                                  top: 0,
                                  child: AppIcon(
                                    icon: Icons.circle,
                                    size: 20,
                                    iconColor: Colors.transparent,
                                    backgroundColor: AppTheme.mainColor,
                                  ),
                                )
                              : Container(),
                          Get.find<PopularProductController>().totalItems >= 1
                              ? Positioned(
                                  right: 5,
                                  top: 3,
                                  child: BigText(
                                    text: Get.find<PopularProductController>()
                                        .totalItems
                                        .toString(),
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  text: product.name!,
                  size: Dimensions.font26,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppTheme.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                AppConstants.BASE_URL + AppConstants.UPLOAD_URL + product.img!,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text: product.description,
                  ),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(
        builder: ((controller) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20 * 2.5,
                  right: Dimensions.width20 * 2.5,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.setQuantity(false);
                      },
                      child: AppIcon(
                          iconSize: Dimensions.iconSize24,
                          iconColor: Colors.white,
                          backgroundColor: AppTheme.mainColor,
                          icon: Icons.remove),
                    ),
                    BigText(
                      text:
                          "\$  ${product.price!}x +  ${controller.inCartItems} ",
                      color: AppTheme.mainBlockColor,
                      size: Dimensions.font26,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.setQuantity(true);
                      },
                      child: AppIcon(
                          iconSize: Dimensions.iconSize24,
                          iconColor: Colors.white,
                          backgroundColor: AppTheme.mainColor,
                          icon: Icons.add),
                    ),
                  ],
                ),
              ),
              Container(
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
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: AppTheme.mainColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.addItem(product);
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          top: Dimensions.height20,
                          bottom: Dimensions.height20,
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                        ),
                        child: BigText(
                          text: "\ ${product.price} | Add to cart",
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: AppTheme.mainColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
