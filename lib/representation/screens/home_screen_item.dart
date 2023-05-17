import 'package:flutter/material.dart';

class HomeScreenItem extends StatefulWidget {
  const HomeScreenItem({super.key});

  @override
  State<HomeScreenItem> createState() => _HomeScreenItemState();
}

class _HomeScreenItemState extends State<HomeScreenItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
