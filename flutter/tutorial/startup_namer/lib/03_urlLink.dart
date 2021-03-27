import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherWidget extends StatelessWidget {
  static const _url_ref = 'https://pub.dev/packages/url_launcher';

  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('URL Launcher',
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
              Text('URLをブラウザで開くチュートリアル'),
              TextButton(
                onPressed: () => _launchURL(_url_ref),
                child: Text('url_launcher | Flutter Package')
              ),
              ElevatedButton(onPressed: () => 
                Navigator.of(context).pop(),
                child: Text('Return'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _launchURL(String url) async => await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}