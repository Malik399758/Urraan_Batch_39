import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProject extends StatefulWidget {
  const SharedPreferencesProject({super.key});

  @override
  State<SharedPreferencesProject> createState() => _SharedPreferencesProjectState();
}

class _SharedPreferencesProjectState extends State<SharedPreferencesProject> {
  var nameController = TextEditingController();
  var numberController = TextEditingController();

  List<String> nameList = [];
  List<String> numberList = [];
  int? selectedIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     getData();
  }


  // Save
  void saveData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(nameController.text.isNotEmpty && numberController.text.isNotEmpty){
      nameList.add(nameController.text);
      numberList.add(numberController.text);
    }
    prefs.setStringList('name', nameList);
    prefs.setStringList('number', numberList);
    nameController.clear();
    numberController.clear();
    getData();
  }

  // Get
  void getData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
   setState(() {
     nameList = prefs.getStringList('name') ?? [];
     numberList = prefs.getStringList('number') ?? [];
   });
  }

  void updateData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(selectedIndex != null && nameController.text.isNotEmpty && numberController.text.isNotEmpty){
      nameList[selectedIndex!] = nameController.text;
      numberList[selectedIndex!] = numberController.text;
    }
    prefs.setStringList('name', nameList);
    prefs.setStringList('number', numberList);
    nameController.clear();
    numberController.clear();
    getData();
  }

  // Edit
  void editContact(int index) {
    setState(() {
      selectedIndex = index;
      nameController.text = nameList[index];
      numberController.text = numberList[index];
    });
  }

  // delete
  void deleteData(int index)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    nameList.removeAt(index);
    numberList.removeAt(index);
    getData();
    prefs.setStringList('name', nameList);
    prefs.setStringList('number', numberList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title : Text('Contact List',style: GoogleFonts.poppins(fontSize: 21,color: Colors.white,fontWeight: FontWeight.w600),)
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Contact Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: numberController,
                decoration: InputDecoration(
                    hintText: 'Contact Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Save
              GestureDetector(
                onTap: ()async{
                  saveData();
                },
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Save',style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: (){
                  updateData();
                },
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Update',style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
         Expanded(
           child: ListView.builder(
              itemCount: nameList.length,
               itemBuilder: (context,index){
             return ListTile(
               leading: CircleAvatar(
                 backgroundImage: AssetImage('assets/images/y.jpg'),
               ),
               title: Text(nameList[index]),
               subtitle: Text(numberList[index]),
               trailing: Expanded(
                 child: Row(
                 mainAxisSize: MainAxisSize.min,
                   children: [
                     GestureDetector(
                         onTap: (){
                           editContact(index);
                         },
                         child: Icon(Icons.edit)),
                     SizedBox(width: 20,),
                     GestureDetector(
                         onTap: (){
                           deleteData(index);
                         },
                         child: Icon(Icons.delete)),
                   ],
                 ),
               ),
             );
           }),
         )
        ],
      ),
    );
  }
}
