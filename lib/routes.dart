import 'package:flutter/material.dart';
import 'package:pointify_partner_customer/representation/screens/home_screen.dart';
import 'package:pointify_partner_customer/representation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen()
};
