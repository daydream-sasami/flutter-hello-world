import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String _type = "Even";
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = "Even";
      }else {
        _type = "Odd";
      }
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
                Text(
                    'You have pushed the button this many times:',
                    ),
                Text(
                    '$_counter',
                    key: Key('counter'),
                    style: Theme.of(context).textTheme.headline4,
                    ),
                if (_counter % 2 == 0)
                Text('Is Even', style: TextStyle(fontSize: 20, color: Colors.red)),
                if (_counter % 2 == 1)
                Text('Is Odd', style: TextStyle(fontSize: 20, color: Colors.red))
              ],
              ),
          ),
      floatingActionButton: FloatingActionButton(
          key: Key('increment'),
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add)),
    );
  }
}

class Calc {
  add(int x, int y) {
    return x + y;
  }
}
