import 'package:flutter/material.dart';

class ListviewUi extends StatefulWidget {
  const ListviewUi({super.key});

  @override
  State<ListviewUi> createState() => _ListviewUiState();
}

class _ListviewUiState extends State<ListviewUi> {
  // List
  List<String> names = [
    'Yaseen Malik',
    'Noman',
    'Ali',
    'Musa',
    'Asad',
    'Waqar',
    'Osama',
    'Noor',
    'Zain'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView',style: TextStyle(fontSize: 21),),
        backgroundColor: Colors.teal,
      ),
      body:/*ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          Text('Yaseen'),
          Text('Noman'),
          Text('Asad'),
          Text('Ahmad'),
          Text('Ali'),
          Text('Noman'),
          Text('Asad'),
          Text('Ahmad'),
          Text('Ali'),
        ],
      )*/
   /*   ListView.separated(
        // itemExtent: 100,
        itemCount: names.length,
          itemBuilder: (context,index){
        return Text(names[index]);
      },separatorBuilder: (context,index){
          return Divider(color: Colors.green,thickness: 5,);
      },)*/
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
           Divider(indent: 100,endIndent: 100,),
          ],
        ),
      )
    );
  }
}
