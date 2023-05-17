import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget(
      {super.key,
      required this.title,
      required this.color,
      required this.buttonText});

  final String title;
  final String buttonText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/quick-action');
          },
          child: Container(
            width: 100,
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
