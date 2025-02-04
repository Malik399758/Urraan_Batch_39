import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_urraan_online_batch_38_ui/whatsapp_clone.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThemeUi(),

    );
  }
}
class ThemeUi extends StatelessWidget {
  const ThemeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Theme UI',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body:Center(child: Text('Hello World',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))
    );
  }
}


