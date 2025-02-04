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
      home:WhatsappClone() ,
    );
  }
}
class WhatsappClone extends StatelessWidget {
  const WhatsappClone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        actions: [
          Icon(Icons.search,color: Colors.black,size: 30,),
          SizedBox(width: 10,),
          Icon(Icons.more_vert,size: 30,color: Colors.black,),
        ],
        title: Text('Whatsapp Clone',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shadowColor: Colors.green,
                elevation: 12,
                child: Container(
                  width: 150,
                  height: 60,
                  color: Colors.green.shade700,
                  child: Center(child: Text('Chat',style: TextStyle(
                    fontSize: 20,color: Colors.white
                  ),)),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 12,
                child: Container(
                  width: 150,
                  height: 60,
                  color: Colors.white60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Group',style: TextStyle(
                          fontSize: 20,
                      ),),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        maxRadius: 12,
                        child: Text('2',style: TextStyle(color: Colors.white),),)
                    ],
                  )
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          // Status
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey.shade50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      maxRadius: 30,
                      child: Icon(Icons.person),
                    ),
                    Positioned(
                      bottom: 3,
                        right: -7,
                        child: Icon(Icons.add)),

                  ],
                ),
                CircleAvatar(
                  maxRadius: 30,
                  child: Icon(Icons.person),
                ),
                CircleAvatar(
                  maxRadius: 30,
                  child: Icon(Icons.person),
                ),
                CircleAvatar(
                  maxRadius: 30,
                  child: Icon(Icons.person),
                ),
                CircleAvatar(
                  maxRadius: 30,
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),
          // Contact
          Expanded(
            child: ListView.separated(
               itemCount: 7,
                itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(child: Icon(Icons.person),),
                title: Text('Yaseen Malik'),
                subtitle: Text('Good Morning'),
                trailing: Text('3:20'),
              );
            },separatorBuilder: (context,index){
                 return Divider();
            },),
          ),
          BottomNavigationBar(items: [
            BottomNavigationBarItem(
                label: 'Phone',
                icon: Icon(CupertinoIcons.phone)),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: Colors.green,
              child: Icon(Icons.message,color: Colors.white,size: 30,),
            ),
            label: 'Message'),
            BottomNavigationBarItem(
                label: 'Phone',
                icon: CircleAvatar(child: Icon(Icons.person),)),
          ])

        ],
      ),
    );
  }
}


