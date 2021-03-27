import 'package:flutter/material.dart';

class SubWidget extends StatelessWidget {
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
        // Create header menu button
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('SubPage'),
              ElevatedButton(onPressed: () => 
                Navigator.of(context).pop(),
                child: Text('Return'),
              )
            ],
          ),
        ),
      ),
    );
  }
}