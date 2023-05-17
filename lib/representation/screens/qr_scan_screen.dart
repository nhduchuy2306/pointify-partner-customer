import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class QRScanScreen extends StatefulWidget {
  const QRScanScreen({super.key});

  static String routeName = "/qr_scan_screen";

  @override
  State<QRScanScreen> createState() => _QRScanScreenState();
}

class _QRScanScreenState extends State<QRScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scan Screen"),
      ),
      body: Center(
        child: Text("QR Scan Screen"),
      ),
    );
  }
}
