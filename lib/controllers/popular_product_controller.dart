import 'package:ecommerce_app/controllers/cart_controller.dart';
import 'package:ecommerce_app/data/repository/popular_product_repo.dart';
import 'package:ecommerce_app/model/cart_model.dart';
import 'package:ecommerce_app/model/products_model.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;
  bool _isLoaded = false;
  bool get isLoded => _isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("get products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
    } else {}
  }

  int _quantity = 0;
  int get quantity => _quantity;
  int _InCartItems = 0;
  int get inCartItems => _InCartItems + _quantity;

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      // print("Increment ==> " + _quantity.toString());
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
      // print("Increment ==> " + _quantity.toString());
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_InCartItems + quantity) < 0) {
      Get.snackbar(
        "Item count",
        "You can't reduce more !",
        backgroundColor: AppTheme.mainColor,
        colorText: Colors.white,
      );
      if (_InCartItems > 0) {
        _quantity = -_InCartItems;
        return _quantity;
      }
      return 0;
    } else if ((_InCartItems + quantity) > 20) {
      Get.snackbar(
        "Item count",
        "You can't add more !",
        backgroundColor: AppTheme.mainColor,
        colorText: Colors.white,
      );
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _InCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product);
    //if exist
    //get form storage _inCartitems=3
    print("exist or not " + exist.toString());
    if (exist) {
      _InCartItems = _cart.getQuantity(product);
    }
    // print("the quantity in the cart is" + _InCartItems.toString());
  }

  void addItem(ProductModel product) {
    _cart.addItem(product, _quantity);
    _quantity = 0;
    _InCartItems = _cart.getQuantity(product);
    _cart.items.forEach((key, value) {
      // print("The id is " +
      //     value.id.toString() +
      //     "The quantity is" +
      //     value.quantity.toString());
    });
    update();
  }

  int get totalItems {
    return _cart.totalItems;
  }

  List<CartModel> get getItems {
    return _cart.getItems;
  }
}
