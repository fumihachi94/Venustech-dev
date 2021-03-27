// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
// import 'package:flutter/services.dart';

import 'package:startup_namer/home.dart';
import 'package:startup_namer/subpage1.dart';
import 'package:startup_namer/02_datastore.dart';
import 'package:startup_namer/03_urlLink.dart';
import 'package:startup_namer/04_markdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial-1',
      home: HomeWidget(),
      routes: <String, WidgetBuilder> {
        '/home':(BuildContext context) => new HomeWidget(),
        '/subpage':(BuildContext context) => new SubWidget(),
        '/datastore':(BuildContext context) => new DataStoreWidget(),
        '/urllauncher':(BuildContext context) => new UrlLauncherWidget(),
        '/markdown':(BuildContext context) => new MarkdownWidget(),
      },
    );
  }
}


// ======================================== //
//  以下ゴミ
// ======================================== //


// class RandomWords extends StatefulWidget {
//   @override
//   State<RandomWords> createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont  = TextStyle(fontSize: 18.0);
//   bool _active = false;
//   void _changeSwitch(bool e) => setState(()=> _active = e);

//   @override 
//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: EdgeInsets.all(16.0), 
//       itemBuilder: (context, i) {
//         if (i.isOdd) return Divider();

//         final index = i ~/ 2;
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       });
//   }

//   @override 
//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//         ),
//     );
//   }

//   @override 
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your Effort Logger',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Colors.blueGrey,
//         // Create Menu button
//         leading: IconButton(
//           onPressed: (){},
//           icon: Icon(Icons.menu),
//         ),
//       ),
//       // Create action button at the right bottm.
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.white,
//       // ==== Main contents ====
//       // body: _buildSuggestions(), 
//       body: HomeBody(),
//       drawer: Drawer(
//         child: Center(child: Text('Drawer sample')),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.list),
//             title: Text('List'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.stacked_line_chart),
//             title: Text('Chart'),
//           ),
//         ],
//       ),
//     );
//   }
// }


// class HomeBody extends StatefulWidget {
//   @override
//   State<HomeBody> createState() => _HomeBody();
// }

// class _HomeBody extends State<HomeBody> {
//   bool _act_stopwatch = false;
//   bool _act_timer = false;
//   void _changeSwitch1(bool e) => setState((){
//      _act_stopwatch = e; 
//      _act_timer = !e;
//   });
//   void _changeSwitch2(bool e) => setState((){
//      _act_timer = e; 
//      _act_stopwatch = !e;
//   });

//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[ 
//           Container(
//             height: 70.0,
//             width: double.infinity,
//             color: Colors.blueGrey,
//             padding: EdgeInsets.all(10.0),
//             margin: EdgeInsets.all(10.0),
//             child: Center(
//               child : Text(
//                 'Test', 
//                 style: TextStyle(
//                   fontFamily: 'OpenSans',
//                   color: Colors.white,
//                   fontSize: 40,
//                 ),
//               ),
//             ),
//           ),
//           SwitchListTile(
//               value: _act_stopwatch,
//               activeColor: Colors.blue,
//               activeTrackColor: Colors.green,
//               inactiveThumbColor: Colors.blue,
//               inactiveTrackColor: Colors.grey,
//               secondary: new Icon(
//                 Icons.timer,
//                 color: _act_stopwatch ? Colors.orange[700] : Colors.grey[500],
//                 size: 50.0,
//               ),
//               title: Text('Stop watch'),
//               onChanged: _changeSwitch1,
//             ),
//             SwitchListTile(
//               value: _act_timer,
//               activeColor: Colors.blue,
//               activeTrackColor: Colors.lightGreen,
//               inactiveThumbColor: Colors.blue,
//               inactiveTrackColor: Colors.grey,
//               secondary: new Icon(
//                 Icons.access_time_outlined,
//                 color: _act_timer ? Colors.orange[700] : Colors.grey[500],
//                 size: 50.0,
//               ),
//               title: Text('Timer'),
//               onChanged: _changeSwitch2,
//             ),
//         ],
//     );
//   }
// }
