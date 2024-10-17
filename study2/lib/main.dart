import 'package:flutter/material.dart';

//enum
//object
//class
//usage of return vs break difrrences understand through
void main() {
  runApp(const MyApp());
}

enum AnimalType { cat, dog, rat }

class Persons {
  final String name;

  void run() {
    print('running');
  }

  void stand() => print('standing');

  Persons(this.name); //constructor
}

class Shambu extends Persons {
  Shambu(
      super.name); //super keuword->extends ....pull over all functionalities of a class to another
}

abstract class AbstractExample {
  var div;
  void update() {
    print('living thing');
  }

  AbstractExample(this.div);
}

class Cat {
  String name;
  Cat(this.name);

  factory Cat.name() {
    return Cat('mikki'); //factory constructor
  }
}

void test3() {
  final skin = Cat.name();
  print(skin.name);
}

void test2() {
  final person = Persons('muhtu');
  person.run();
  person.stand();
  final per = Shambu('maji');
  per.run();
  per.stand();
  //var abu = AbstractExample('var');Abstract classes can't be instantiated.
}

void test(AnimalType animalType) {
  print(animalType);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    test(AnimalType.cat);
    test2();
    test3();
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
