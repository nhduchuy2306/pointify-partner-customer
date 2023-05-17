import 'package:flutter/material.dart';
import 'package:pointify_partner_customer/core/constants/color_constant.dart';
import 'package:pointify_partner_customer/representation/screens/home_screen.dart';
import 'package:simple_text_form_field/simple_text_form_field.dart';

import '../../core/constants/dimension_constant.dart';

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
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SimpleTextFormField(
              controller: usernnameController,
              edgeInsets: const EdgeInsets.only(
                  left: kPaddingLeftRight, right: kPaddingLeftRight),
              isRequired: true,
              errorTextSize: 8,
              maxLength: 12,
              label: "Name",
              placeHolder: "Input your name",
            ),
            const SizedBox(
              height: 50,
            ),
            SimpleTextFormField(
              controller: passwordController,
              edgeInsets: const EdgeInsets.only(
                  left: kPaddingLeftRight, right: kPaddingLeftRight),
              isRequired: true,
              errorTextSize: 8,
              maxLength: 12,
              label: "Password",
              placeHolder: "Input your password",
              type: InputTextType.password,
            ),
            const SizedBox(
              height: 100,
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
                padding: const EdgeInsets.symmetric(
                    horizontal: kPaddingLeftRight, vertical: 10),
                margin: const EdgeInsets.only(
                    left: kPaddingLeftRight, right: kPaddingLeftRight),
                decoration: BoxDecoration(
                  color: ColorPalette.loginButtonColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(child: Text("Login")),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
