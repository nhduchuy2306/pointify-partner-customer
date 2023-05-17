import 'package:flutter/material.dart';

class ActionTabWidget extends StatelessWidget {
  const ActionTabWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.color,
      required this.height,
      required this.width,
      required this.textColor,
      required this.textSize});

  final IconData icon;
  final String text;
  final Color color;
  final double height;
  final double width;
  final Color textColor;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 60,
          height: 40,
          child: Center(
            child: Text(
              text,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: textSize,
                color: textColor,
                wordSpacing: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
