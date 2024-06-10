import 'package:flutter/material.dart';

class Student {
  late int id;
  late String name;

  // Student(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  //

  Student({required this.id, required this.name});

  Student.fromDB(String db) {
    this.id = 10;
    this.name = "John";
  }

  void show() => print('Student');
  void _display() => print("Student");
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Student s1 =
        Student(id: 10, name: "John"); // instantiate + call to constructor
    Student s2 = Student.fromDB("DB"); // instantiate + call to constructor
    print(s2.name);
    print(s1.id);
    print(s1.name);
    s1.show();
    s1._display(); // private method can be accessed outside the class

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: Colors.deepPurple,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
