import 'package:flutter/material.dart';
import 'package:pointify_partner_customer/representation/screens/discount_screen.dart';
import 'package:pointify_partner_customer/representation/screens/history_screen.dart';
import 'package:pointify_partner_customer/representation/screens/home_screen.dart';
import 'package:pointify_partner_customer/representation/screens/intro_screen.dart';
import 'package:pointify_partner_customer/representation/screens/login_screen.dart';
import 'package:pointify_partner_customer/representation/screens/profile_screen.dart';
import 'package:pointify_partner_customer/representation/screens/qr_scan_screen.dart';
import 'package:pointify_partner_customer/representation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  QRScanScreen.routeName: (context) => const QRScanScreen(),
  HistoryScreen.routeName: (context) => const HistoryScreen(),
  DiscountScreen.routeName: (context) => const DiscountScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
