import 'package:flutter/material.dart';
import 'package:pointify_partner_customer/core/constants/color_constant.dart';
import 'package:pointify_partner_customer/core/helpers/image_helper.dart';
import 'package:pointify_partner_customer/representation/screens/home_screen.dart';
import 'package:simple_text_form_field/simple_text_form_field.dart';

import '../../core/constants/dimension_constant.dart';
import '../../core/helpers/asset_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String routeName = "/login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  SimpleTextFormFieldController usernnameController =
      SimpleTextFormFieldController();
  SimpleTextFormFieldController passwordController =
      SimpleTextFormFieldController();
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SimpleTextFormField(
              controller: usernnameController,
              edgeInsets: const EdgeInsets.only(
                  left: kPaddingLeftRight, right: kPaddingLeftRight),
              isRequired: true,
              errorTextSize: 8,
              maxLength: 12,
              label: "Username Or Email",
              placeHolder: "Username or Email",
            ),
            const SizedBox(
              height: 30,
            ),
            SimpleTextFormField(
              controller: passwordController,
              edgeInsets: const EdgeInsets.only(
                  left: kPaddingLeftRight, right: kPaddingLeftRight),
              isRequired: true,
              errorTextSize: 8,
              maxLength: 12,
              label: "Password",
              placeHolder: "Password",
              type: InputTextType.password,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                  left: kPaddingLeftRight,
                  right: kPaddingLeftRight,
                  top: kPaddingLeftRight),
              child: Text("Forget Password?"),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  username = usernnameController.value;
                  password = passwordController.value;
                });
                Navigator.pushNamed(
                  context,
                  HomeScreen.routeName,
                  arguments: {
                    "username": username,
                    "password": password,
                  },
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(
                    left: kPaddingLeftRight, right: kPaddingLeftRight),
                decoration: BoxDecoration(
                  color: Color(0xffff7A00),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(
                      left: kPaddingLeftRight, right: kPaddingLeftRight),
                ),
                Text("Or Continue with"),
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(
                      left: kPaddingLeftRight, right: kPaddingLeftRight),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: kPaddingLeftRight, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: ImageHelper.loadFromAsset(
                    width: 30,
                    height: 30,
                    AssetHelper.googleIcon,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
