import 'package:flutter/material.dart';

class Student {
  late int id;
  late String name;

  // Student(int id, String name){
  //   this.id = id;
  //   this.name = name;
  // }

  Student({required this.id, required this.name});

  Student.fromDB(String db){

  }

  void show() => print('Student');

  void _display() => print("Student");
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Student s1 = Student(id: 10, name: 'Sok'); //instantiate + call to constructor
    Student s2 = Student.fromDB("Database");

    print(s1.id);
    print(s1.name);

    s1.show();
    s1._display();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(),
    );
  }
}
