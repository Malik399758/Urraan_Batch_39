import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Navigation Screen',style: GoogleFonts.aBeeZee(color: Colors.white),),
        backgroundColor: Colors.amber,
      ),
      body: Center(child: Text('Welcome to Navigation Screen',style: GoogleFonts.poppins(fontSize: 21,fontWeight: FontWeight.bold),)),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: '')
      ]),
    );
  }
}
