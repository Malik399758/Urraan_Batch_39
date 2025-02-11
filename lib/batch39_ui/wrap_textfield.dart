import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_urraan_online_batch_38_ui/batch39_ui/navigation_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WrapTextfield extends StatefulWidget {
  const WrapTextfield({super.key});

  @override
  State<WrapTextfield> createState() => _WrapTextfieldState();
}

class _WrapTextfieldState extends State<WrapTextfield> {
  var emailController = TextEditingController();
  int count =0;

  // add
  void add(){
    setState(() {
      count++;
    });
  }
  // sub
  void sub(){
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless and Stateful widget',style: GoogleFonts.poppins(color: Colors.white),),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body:Center(child: GestureDetector(
        onTap: (){
          // For Navigation
          Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen()));
        },
          child: Text('Click Me',style: GoogleFonts.poppins(fontSize: 21,fontWeight: FontWeight.bold),)))
        // TextField
      /*   Padding(
           padding: const EdgeInsets.symmetric(horizontal: 40),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextFormField(
                 controller: emailController,
                 keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.email),
                   label: Text('Email'),
                   hintText: 'Enter your name',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20)
                   )
                 ),
               ),
               SizedBox(height: 30,),
               TextFormField(
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                     prefixIcon: Icon(Icons.lock),
                     label: Text('Password'),
                     hintText: 'Enter your Password',
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20)
                     )
                 ),
               ),
             ],
           ),
         )*/
     /*   Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(count.toString(),style: GoogleFonts.poppins(fontSize: 30),),
              GestureDetector(
                onTap: (){
                  add();
                },
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Add',style: TextStyle(color: Colors.white),)),
                ),
              ),
              GestureDetector(
                onTap: (){
                  sub();
                },
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Remove',style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
        ),*/
        // Wrap Widget
      /* Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          //  direction: Axis.vertical,
          // runAlignment: WrapAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.teal,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          ],
        ),
      ),*/
      // floating
     /* floatingActionButton: FloatingActionButton(onPressed: (){
        add();
      },
    child: Icon(Icons.add)),*/
    );
  }
}

