import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.icon,
      required this.widgetColor,
      required this.text,
      required this.textColor,
      required this.textSize,
      required this.payValue});

  final double height;
  final double width;
  final IconData icon;
  final Color widgetColor;
  final String text;
  final Color textColor;
  final double textSize;
  final double payValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widgetColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: textSize,
                  color: textColor,
                ),
              ),
            ],
          ),
          Text(
            "-$payValue VND",
            style: TextStyle(
              fontSize: textSize,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
