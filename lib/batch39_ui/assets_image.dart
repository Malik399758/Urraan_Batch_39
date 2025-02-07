import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetsImage extends StatefulWidget {
  const AssetsImage({super.key});

  @override
  State<AssetsImage> createState() => _AssetsImageState();
}

class _AssetsImageState extends State<AssetsImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets Image'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Assets Image',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            // Assets Image
           /* Container(
              width: 200,
                height: 200,
                color: Colors.green,
                child: Image.asset('assets/images/y.jpg',fit: BoxFit.fitWidth,)),*/
            // Network Image
          /*  Center(child: Text('Network Image',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            Image.network('https://tse1.mm.bing.net/th?id=OIP.9c6dL4n4fcizx5Qh0SfgqQHaH_&pid=Api&P=0&h=220'),*/

            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/y.jpg'),
                ),
                SizedBox(width: 10,),
                Text('Yaseen Malik',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/y.jpg'),
                ),
                SizedBox(width: 10,),
                Text('Yaseen Malik',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/y.jpg'),
                ),
                SizedBox(width: 10,),
                Text('Yaseen Malik',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/y.jpg'),
                ),
                SizedBox(width: 10,),
                Text('Yaseen Malik',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/y.jpg'),
                ),
                SizedBox(width: 10,),
                Text('Yaseen Malik',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),





          ],
        ),
      )
    );
  }
}
