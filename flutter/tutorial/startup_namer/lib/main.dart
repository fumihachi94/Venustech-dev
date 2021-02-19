// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial-1',
      home: RandomWords(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Flutter Tutorial-1'),
      //   ),
      //   body: Center(
      //     child: RandomWords(),
      //   ),
      // ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont  = TextStyle(fontSize: 18.0);
  bool _active = false;
  void _changeSwitch(bool e) => setState(()=> _active = e);

  @override 
  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0), 
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      });
  }

  @override 
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
        ),
    );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Effort Logger',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        // Create Menu button
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
      ),
      // Create action button at the right bottm.
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.white,
      // Main contents
      // body: _buildSuggestions(), 
      body: Column(
        children: <Widget>[ 
          Container(
            height: 70.0,
            width: double.infinity,
            color: Colors.blueGrey,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Center(
              child : Text(
                'Test', 
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 40,
                ),
              ),
            ),
          ),
          SwitchListTile(
              value: _active,
              activeColor: Colors.orange,
              activeTrackColor: Colors.red,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.grey,
              secondary: new Icon(
                Icons.thumb_up,
                color: _active ? Colors.orange[700] : Colors.grey[500],
                size: 50.0,
              ),
              title: Text('Like'),
              onChanged: _changeSwitch,
            ),
        ],
      ),
      drawer: Drawer(
        child: Center(child: Text('Drawer sample')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('List'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart),
            title: Text('Chart'),
          ),
        ],
      ),
    );
  }
}
