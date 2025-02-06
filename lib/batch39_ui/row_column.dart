import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Row and Column',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white)),
        centerTitle: true,
      ),
      body : Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text('1')),
          ),
          SizedBox(width: 20,),
          //SizedBox(height: 10,),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(child: Text('2')),
          ),
         // SizedBox(height: 10,),
          SizedBox(width: 20,),
          Container(
            width: 100,
            height: 100,
            color: Colors.teal,
            child: Center(child: Text('3')),
          ),
      /*    Row(
            children: [
              Icon(Icons.person,color: Colors.green,size: 40,),
              Icon(Icons.notification_add,color: Colors.red,size: 40,),
            ],
          )*/
         /* Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text('1')),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('2')),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.teal,
                child: Center(child: Text('3')),
              ),

            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,

            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text('1')),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('2')),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.teal,
                child: Center(child: Text('3')),
              ),

            ],
          ),*/

        ],
      )

        // For Row
      /*:Container(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
         // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(child: Text('1')),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text('2')),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.teal,
              child: Center(child: Text('3')),
            ),
          ],
        ),
      )*/
    );
  }
}
