import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Flutter Tutorial-1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial-1'),
        ),
        body: Center(
          //child: Text('Hello Flutter!'),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

