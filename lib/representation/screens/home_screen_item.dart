import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pointify_partner_customer/models/Transaction_model.dart';
import 'package:pointify_partner_customer/representation/widgets/action_tab_widget.dart';
import 'package:pointify_partner_customer/representation/widgets/tab_widget.dart';
import 'package:pointify_partner_customer/representation/widgets/transaction_widget.dart';

import '../widgets/balance_total_widget.dart';
import '../widgets/card_widget.dart';

class HomeScreenItem extends StatefulWidget {
  const HomeScreenItem({super.key});

  @override
  State<HomeScreenItem> createState() => _HomeScreenItemState();
}

class _HomeScreenItemState extends State<HomeScreenItem> {
  final ScrollController _scrollController = ScrollController();

  var transaction = {
    {
      "text": "Netflix 1",
      "payValue": 35.50,
    },
    {
      "text": "Netflix 2",
      "payValue": 36.50,
    },
    {
      "text": "Netflix 3",
      "payValue": 37.50,
    },
    {
      "text": "Netflix 4",
      "payValue": 38.50,
    },
    {
      "text": "Netflix 5",
      "payValue": 39.50,
    },
  };

  void loadJson() {
    transaction.forEach((element) {
      TransactionModel.fromJson(element);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: ListView(
          controller: _scrollController,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/card');
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "+ Add Card",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                CardWidget(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    BalanceTotalWidget(
                      icon: FontAwesomeIcons.wallet,
                      text: "Balance",
                      value: "1.000.000",
                      color: Colors.blue,
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.45,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    BalanceTotalWidget(
                      icon: FontAwesomeIcons.creditCard,
                      text: "Total Spend",
                      value: "1.000.000",
                      color: Colors.green,
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.45,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TabWidget(
                  title: "Quick Actions",
                  color: Colors.blue,
                  buttonText: "See all",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ActionTabWidget(
                      icon: Icons.phone,
                      text: "Mobile Recharge",
                      color: Colors.red,
                      height: 60,
                      width: 60,
                      textColor: Colors.black,
                      textSize: 14,
                    ),
                    ActionTabWidget(
                      icon: FontAwesomeIcons.moneyBillWave,
                      text: "Bill Payment",
                      color: Colors.amber,
                      height: 60,
                      width: 60,
                      textColor: Colors.black,
                      textSize: 14,
                    ),
                    ActionTabWidget(
                      icon: FontAwesomeIcons.buildingColumns,
                      text: "Bank Transfer",
                      color: Colors.green,
                      height: 60,
                      width: 60,
                      textColor: Colors.black,
                      textSize: 14,
                    ),
                    ActionTabWidget(
                      icon: FontAwesomeIcons.handHoldingDollar,
                      text: "Request Money",
                      color: Colors.deepOrange,
                      height: 60,
                      width: 60,
                      textColor: Colors.black,
                      textSize: 14,
                    ),
                    ActionTabWidget(
                      icon: FontAwesomeIcons.handHoldingHand,
                      text: "Donate",
                      color: Colors.pink,
                      height: 60,
                      width: 60,
                      textColor: Colors.black,
                      textSize: 14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                TabWidget(
                  title: "Recent Transactions",
                  color: Colors.blue,
                  buttonText: "See all",
                ),
                SizedBox(
                  height: 14,
                ),
                TransactionWidget(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  icon: Icons.movie,
                  widgetColor: Colors.red,
                  text: "Netflix",
                  textColor: Colors.black,
                  textSize: 20,
                  payValue: 35.50,
                ),
                SizedBox(
                  height: 14,
                ),
                TransactionWidget(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  icon: Icons.movie,
                  widgetColor: Colors.red,
                  text: "Netflix",
                  textColor: Colors.black,
                  textSize: 20,
                  payValue: 35.50,
                ),
                SizedBox(
                  height: 14,
                ),
                TransactionWidget(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  icon: Icons.movie,
                  widgetColor: Colors.red,
                  text: "Netflix",
                  textColor: Colors.black,
                  textSize: 20,
                  payValue: 35.50,
                ),
                SizedBox(
                  height: 14,
                ),
                TransactionWidget(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  icon: Icons.movie,
                  widgetColor: Colors.red,
                  text: "Netflix",
                  textColor: Colors.black,
                  textSize: 20,
                  payValue: 35.50,
                ),
                SizedBox(
                  height: 14,
                ),
                TransactionWidget(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  icon: Icons.movie,
                  widgetColor: Colors.red,
                  text: "Netflix",
                  textColor: Colors.black,
                  textSize: 20,
                  payValue: 35.50,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
