// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:startup_namer/sidemenu.dart';

class CreateItemButton extends StatefulWidget {

  // Argument
  final String title;        
  final String routeName;
  // Constructor
  CreateItemButton({
    this.title, 
    this.routeName,
  }); 

  @override
  _CreateItemButton createState() => _CreateItemButton();
}

class _CreateItemButton extends State<CreateItemButton> {
  Widget build(BuildContext context){
    return FractionallySizedBox(
      widthFactor: 1.0,
      child: TextButton(
        onPressed: () => 
        Navigator.of(context).pushNamed(widget.routeName),
        child: new Text(widget.title),
        style: TextButton.styleFrom(
          primary: Colors.blue,
          // backgroundColor: Colors.blueGrey[100],
          // shadowColor: Colors.grey,
          // shape: const StadiumBorder(), // 角を丸くする
          // side: const  BorderSide(), // 枠線をつける
          ),
    ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Contents',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Item list', 
                style: TextStyle(fontSize: 30,),
              ),
              CreateItemButton(title: 'subpage-01', routeName: '/subpage',),
              CreateItemButton(title: '02: data store', routeName: '/datastore',),
              CreateItemButton(title: '03: url launcher', routeName: '/urllauncher',),
              CreateItemButton(title: '04: markdwon', routeName: '/markdown',),
              CreateItemButton(title: 'subpage-05', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-06', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-07', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-08', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-09', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-10', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-11', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-12', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-13', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-14', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-15', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-16', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-17', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-18', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-19', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-20', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-21', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-22', routeName: '/subpage',),
              CreateItemButton(title: 'subpage-23', routeName: '/subpage',),
            ],
          ),
        ),
      ),
      drawer: SideMenu()
    );
  }
}