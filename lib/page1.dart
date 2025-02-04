import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_urraan_online_batch_38_ui/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context, (MaterialPageRoute(builder: (_) => Page2())));
              },
              child: Icon(Icons.arrow_forward,size: 50,color: Colors.white,)),
          Icon(Icons.search),
          Icon(Icons.settings)
        ],
        title: Text('Page 1'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Page 1',style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
