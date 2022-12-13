import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.screenHeight * 0.05,
          ),
          Container(
            height: Dimensions.screenHeight * 0.25,
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 80,
                backgroundImage: AssetImage("assets/image/splash_part_1.png"),
              ),
            ),
          ),
          AppTextField(
              textController: emailController,
              hintText: "Email",
              icon: Icons.email),
          SizedBox(
            height: Dimensions.height20,
          ),
          AppTextField(
              textController: passwordController,
              hintText: "Password",
              icon: Icons.password_sharp),
          AppTextField(
              textController: nameController,
              hintText: "Name",
              icon: Icons.person),
          SizedBox(
            height: Dimensions.height20,
          ),
          AppTextField(
              textController: phoneController,
              hintText: "Phone",
              icon: Icons.phone),
          SizedBox(
            height: Dimensions.height20,
          ),
        ],
      ),
    );
  }
}
