import 'package:flutter/material.dart';

dynamic hello(){// function

}

void main() {
  hello(); // function
  MyApp app = MyApp();
  app.hi();  // method

  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  hi(){ // method

  }

  int sum(int a, int b){
    return a + b;
  }

  int add(int a, int b) => a + b;

  void hello(String name) => print('Hello $name');

  // Positional optional parameter
  void display([String name ='no-name', String tel = 'no-tel', String address = 'no-address']) {
    print('Name: $name');
    print('Tel: $tel');
    print('Address: $address');
  }

  // Named Parameter
  void show({String name = 'no-name', String tel = 'no-tel', String address = 'no-address'}){
    print('Name: $name');
    print('Tel: $tel');
    print('Address $address');
  }


  @override
  Widget build(BuildContext context) {

    print(sum(2, 3)); // 5
    print(add(2, 3)); // 5
    hello('John'); // Hello John

    display('Sok', '093973138', 'PP');
    show(address: 'Sen Sok', name: "Sok", tel:  '093973138');

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
