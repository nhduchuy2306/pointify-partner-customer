import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pointify_partner_customer/representation/screens/login_screen.dart';

import '../../core/helpers/asset_helper.dart';
import '../../core/helpers/image_helper.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  static String routeName = "/intro_screen";

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Positioned.fill(
            child: ImageHelper.loadFromAsset(
              width: 200,
              height: 200,
              AssetHelper.imageBackgroundSplash,
            ),
          ),
          const Center(
            child: Text(
              "Welcome to Pointify",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Sign up with Google",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              const Duration(seconds: 2);
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Login with Google",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
