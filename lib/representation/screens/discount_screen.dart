import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({super.key});

  static String routeName = "/discount_screen";

  @override
  State<DiscountScreen> createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Discount Screen"),
    );
  }
}
