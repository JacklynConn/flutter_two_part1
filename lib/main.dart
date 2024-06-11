import 'package:flutter/material.dart';
import 'package:flutter_two_part1/my_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    MyLogin login = MyLogin();
    login.password = 'abc123'; // setter = write only
    print(login.hashPassword); // getter = read only

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
