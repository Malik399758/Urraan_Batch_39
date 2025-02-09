import 'package:flutter/material.dart';

class ListTileButtonsUi extends StatefulWidget {
  const ListTileButtonsUi({super.key});

  @override
  State<ListTileButtonsUi> createState() => _ListTileButtonsUiState();
}

class _ListTileButtonsUiState extends State<ListTileButtonsUi> {
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
        title: Text('ListTile And Buttons',style: TextStyle(fontSize: 21,color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: /*ListView.builder(
        itemCount:9,
          itemBuilder: (context,index){
        return Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            leading: GestureDetector(
              onTap: (){
                print('Image Click');
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/y.jpg'),
              ),
            ),
            title: Text(names[index]),
            subtitle: Text('08/Feb/2025'),
            trailing: CircleAvatar(
              radius: 16,
              child: Text('10',style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.green,
            )
          ),
        );
      })*/
    /*  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black
        ),
          onPressed: (){
          print('Hello World');
          }, child: Text('Click me',style: TextStyle(color: Colors.white),))*/
   /*   TextButton(onPressed: (){
        print('CLick Me');
      }, child: Text('Click Me'))*/
   /*   GestureDetector(
        onTap: (){
          print('This is Custom Button');
        },
        child: Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
                color: Colors.black
          ),
          child: Center(child: Text('Click Me',style: TextStyle(color: Colors.white),)),
        ),
      )*/
      Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
            ),
          ),
        ],
      ),

    );
  }
}

