import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Portaria',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Contador portaria'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portaria"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Número de pessoas no prédio:',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 5.0)),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 30),
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  tooltip: 'Increment',
                  onPressed: _incrementCounter,
                ),
                const SizedBox(height: 30),
                FloatingActionButton(
                  child: const Icon(Icons.remove),
                  tooltip: 'Decrement',
                  onPressed: _decrementCounter,
                ),
              ],
            ),
          )),
    );
  }
}
