import 'package:flutter/material.dart';
import 'package:flutter_two_part1/my_login.dart';

class Vehicle{
   String name = '';
   void drive(){
     print("Vehicle  $name is driving");
   }
}

class Car extends Vehicle{
  @override
  void drive() {
    name = "Motor Car";
    super.drive();
    print("Car is driving");
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Car car = Car();
    car.drive();


    // Polymorphism
    Vehicle v1 = Car();
    v1.drive();

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
