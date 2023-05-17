import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pointify_partner_customer/core/helpers/asset_helper.dart';
import 'package:pointify_partner_customer/core/helpers/image_helper.dart';
import 'package:pointify_partner_customer/representation/screens/intro_screen.dart';

import '../../core/constants/color_constant.dart';

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
      Navigator.push(
        context,
        PageTransition(
          duration: const Duration(milliseconds: 500),
          child: IntroScreen(),
          type: PageTransitionType.bottomToTop,
        ),
      );
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
