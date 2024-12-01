import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
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

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beautiful Counter App'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.teal.shade200,
              Colors.teal.shade400,
              Colors.teal.shade600,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter Value',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('Increment'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('Decrement'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _resetCounter,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('Reset'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
