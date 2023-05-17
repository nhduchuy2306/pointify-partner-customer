import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScanScreen extends StatefulWidget {
  const QRScanScreen({super.key});

  static String routeName = "/qr_scan_screen";

  @override
  State<QRScanScreen> createState() => _QRScanScreenState();
}

class _QRScanScreenState extends State<QRScanScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildOrView(context),
          Positioned(
            bottom: 10,
            child: buildResult(),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: buildControlButtons(),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  Widget buildControlButtons() => Row(
        children: [
          IconButton(
            color: Colors.white,
            onPressed: () async {
              await controller?.toggleFlash();
              setState(() {});
            },
            icon: FutureBuilder(
              future: controller?.getFlashStatus(),
              builder: (context, snapshot) {
                if (snapshot.data == true) {
                  return Icon(Icons.flash_on);
                } else {
                  return Icon(Icons.flash_off);
                }
              },
            ),
          ),
        ],
      );

  Widget buildResult() => Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          result != null ? "Scan result: ${result?.code}" : "Scan a code",
          maxLines: 3,
        ),
      );

  Widget buildOrView(BuildContext context) => QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Theme.of(context).primaryColor,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: MediaQuery.of(context).size.width * 0.8,
      ));

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
