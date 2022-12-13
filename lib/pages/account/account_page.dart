import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/widgets/account_widget.dart';
import 'package:ecommerce_app/widgets/app_icon.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.mainColor,
        title: Center(
          child: BigText(
            text: "Profile ",
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          // profile Icons
          children: [
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppTheme.mainColor,
              iconColor: Colors.white,
              iconSize: Dimensions.height45 + Dimensions.height30,
              size: Dimensions.height15 * 10,
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //name
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.person,
                        backgroundColor: AppTheme.mainColor,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "Boat",
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    //phone
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.phone,
                        backgroundColor: AppTheme.yellowColor,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "+66 611675623",
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    //email
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.email,
                        backgroundColor: AppTheme.yellowColor,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "Boatsuban2543@gamil.com",
                      ),
                    ),
                    SizedBox(height: Dimensions.height15),
                    //address
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.location_on,
                        backgroundColor: AppTheme.yellowColor,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "Fill in your address",
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    //message
                    AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.message_outlined,
                        backgroundColor: Colors.redAccent,
                        iconColor: Colors.white,
                        iconSize: Dimensions.height10 * 5 / 2,
                        size: Dimensions.height10 * 5,
                      ),
                      bigText: BigText(
                        text: "Boat",
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
