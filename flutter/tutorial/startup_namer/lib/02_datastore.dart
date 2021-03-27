import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DataStoreWidget extends StatelessWidget {
  static const _url_ref_internal_data_save = 'https://cbtdev.net/flutter-shared-preferences/';
  static const _url_ref_firebase = 'https://www.flutter-study.dev/firebase-app/firestore/';

  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('データ保存',
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
              Text('データ保存のチュートリアル'),
              TextButton(
                onPressed: () => _launchURL(_url_ref_internal_data_save),
                child: Text('Flutter アプリ内データの保存と読み込み | CBTDEV')
              ),
              TextButton(
                onPressed: () => _launchURL(_url_ref_firebase),
                child: Text('Firestoreでデータ保存 | Flutterで始めるアプリ開発')
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