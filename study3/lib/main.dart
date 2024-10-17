import 'package:flutter/material.dart';

/*
1. extension
2.async/await
3.stream of data;
4.sync and async generators
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    test();
    test1();
    test4();
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

class Cat {
  String name;
  Cat(this.name);
}

extension Run on Cat //additional logic to class ....fn of a extension
{
  void blah() {
    print('cat $name is running');
  }
}

void test() {
  final cat1 = Cat('kittu');
  print(cat1.name);
  cat1.blah();
}

Iterable<int> countdown(int n) sync* {
  while (n > 0) {
    yield n;
    n--;
  }
}

void test4() {
  countdown(5);
}

Future<int> multiplication(int a) {
  return Future.delayed(Duration(seconds: 3), () => a * 2);
}

// Stream<String> getName() {
//   return Stream.periodic(Duration(seconds: 1), (value) {
//     return 'foo';
//   });
// }

// void test2() async {
//   await for (final value in getName()) {
//     print(value);
//   }
// }

void test1() async {
  final result = await multiplication(10);
  print(result);
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
