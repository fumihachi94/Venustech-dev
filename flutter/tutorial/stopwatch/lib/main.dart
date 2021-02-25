import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');

  return "$hours:$minutes:$seconds";
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyan[700],
        accentColor: Colors.cyan[700],
      ),
      home: MyHomePage(title: 'Tutorial - Stopwatch'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Stopwatch _stopwatch;
  // var _stopwatch = Stopwatch();
  final duration = const Duration(milliseconds: 30);
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _timer = Timer.periodic(
      duration, (timer) { setState(() {});}
    );
  }

  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }
    handleStartTimer();
    setState(() {});
  }

  void handleReset() {
    _stopwatch.reset();
    setState(() {});
  }

  @override
  void dispose(){
    _timer.cancel();
    super.dispose();
  }

  void handleStartTimer(){
    _timer = Timer(duration, keepRunning);
  }

  void keepRunning(){
    if(_stopwatch.isRunning){
      handleStartTimer();
    }
    setState(() {});
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
              formatTime(_stopwatch.elapsedMilliseconds),
              style: TextStyle(fontSize: 48.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: handleStartStop, 
                  child: Text(_stopwatch.isRunning ? 'Stop' : 'Start'),
                  style: ElevatedButton.styleFrom(
                    primary: _stopwatch.isRunning ? Colors.red : Colors.green,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: handleReset, 
                  child: Text('Reset'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
