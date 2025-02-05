import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextUi extends StatefulWidget {
  const TextUi({super.key});

  @override
  State<TextUi> createState() => _TextUiState();
}

class _TextUiState extends State<TextUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor:Colors.teal,
      ),
      body: Align(
             alignment: FractionalOffset(0.5, 0.5),
            //alignment: Alignment(0, 1),
           // alignment: Alignment.centerRight,
          child: Text('Flutter Development',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),))
      /*Text('Flutter Development shfdsgdf ifhsdi fd idshf isdf hgiss g sghi s g',style: TextStyle(
          letterSpacing: 10,
          wordSpacing: 5,
          fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline,
      decorationColor: Colors.green,decorationStyle: TextDecorationStyle.dotted),*/
        // maxLines: 2,overflow: TextOverflow.ellipsis,
      // textAlign: TextAlign.center,
   // )
    );
  }
}
