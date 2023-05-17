import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  static String routeName = "/history_screen";

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: const Center(
        child: Text('History Screen'),
      ),
    );
  }
}
