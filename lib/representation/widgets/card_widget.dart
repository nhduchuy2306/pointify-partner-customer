import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.greenAccent,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Card",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 60,
                child: Stack(
                  children: [
                    Positioned(
                      child: Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: Icon(
                        Icons.circle,
                        color: Colors.black87,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "1234 5678 9012 3456",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 7,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Card Holder",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Expire",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mister Boss",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "10 / 27",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
