import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Counter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;

  void _incrementCounter(int buttonIndex) {
    setState(() {
      if (buttonIndex == 1) {
        _counter1++;
      } else if (buttonIndex == 2) {
        _counter2++;
      } else {
        _counter3++;
      }
    });
  }

  void _resetCounters() {
    setState(() {
      _counter1 = 0;
      _counter2 = 0;
      _counter3 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _incrementCounter(1),
                  child: Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: () => _incrementCounter(2),
                  child: Text('Button 2'),
                ),
                ElevatedButton(
                  onPressed: () => _incrementCounter(3),
                  child: Text('Button 3'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Clicks: $_counter1'),
                Text('Clicks: $_counter2'),
                Text('Clicks: $_counter3'),
              ],
            ),
            ElevatedButton(
              onPressed: _resetCounters,
              child: Text('Reset Counters'),
            ),
          ],
        ),
      ),
    );
  }
}
