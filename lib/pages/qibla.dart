import 'package:flutter/material.dart';
import 'package:islam_alo/widget/textwidget.dart';

class QiblaScreen extends StatefulWidget {
  const QiblaScreen({super.key});

  @override
  State<QiblaScreen> createState() => _QiblaScreenState();
}

class _QiblaScreenState extends State<QiblaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: Center(child: TextWidget(text: 'ক্বিবলা', color: Colors.white, textSize: 25,isTitle: true,)),),
      body:Column(children: [
      Image.asset('assets/cat/qibla.png',height: 500,)
    ],),);
  }
}
