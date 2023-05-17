import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pointify_partner_customer/core/helpers/asset_helper.dart';
import 'package:pointify_partner_customer/core/helpers/image_helper.dart';
import 'package:pointify_partner_customer/representation/screens/intro_screen.dart';

import '../../core/constants/color_constant.dart';
import '../../core/helpers/local_storage_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectHomeScreen();
  }

  void redirectHomeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, IntroScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          child: Scaffold(
            backgroundColor: ColorPalette.backgroundScaffoldColor,
          ),
        ),
        Column(
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
                "Pointify",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ],
    );
  }
}
