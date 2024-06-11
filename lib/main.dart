import 'package:flutter/material.dart';

class Student {
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


    Student s1 = Student();
    s1.show();

    s1._display();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        color: Colors.white,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Student student = Student();
              student.show();
              student._display();
            },
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
