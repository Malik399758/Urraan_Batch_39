// Model

import 'dart:io';

class UserModel{
  String name;

  // Constructor

  UserModel({required this.name});

  // Convert into map

  Map<String,dynamic> toMap(){
    return {
      'name' : name,
    };
  }

  // convert from map

  factory UserModel.fromMap(Map<String,dynamic> map){
    return UserModel(name: map['name']);
  }
}

// main
void main(){
  print('Enter names separated by spaces');
  String? input = stdin.readLineSync();
  if(input !=null) {
    List<String> names = input.split(' ');
    for (String name in names) {
      UserModel result = UserModel(name: name);
      print(result.name);
    }
  }else{
    print('No names were entered');
  }



}