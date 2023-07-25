import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PDFScreen extends StatefulWidget {
  static const String routeName = '/pdf';
  const PDFScreen({super.key});

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  late PdfController pdfController;
  //late PdfControllerPinch pdfPinchController;

  loadController() {
    pdfController = PdfController(document: PdfDocument.openAsset('assets/sample.pdf'));
    //pdfPinchController = PdfControllerPinch(document: PdfDocument.openAsset('assets/sample.pdf'));
  }
  @override
  void initState() {
    loadController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filename'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: PdfView(
        controller: pdfController,
      ),
    );
  }
}
