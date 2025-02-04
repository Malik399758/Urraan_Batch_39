import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerUi(),
    );
  }
}

class ContainerUi extends StatelessWidget {
  const ContainerUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        //padding: EdgeInsets.only(left: 30,top: 60),
        //alignment: Alignment.center,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green,Colors.yellow,Colors.redAccent],
            begin: Alignment.topRight
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 5
            ),
          ],
            color: Colors.green,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
        ),
        child: Text('Container',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
