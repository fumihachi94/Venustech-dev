import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;

class MarkdownWidget extends StatelessWidget {
  final _md_text = 
  "Markdownで記述  nsert emoji here😀 "
  "<br/>"
  "[flutter_markdown | Flutter Package](https://pub.dev/packages/flutter_markdown)";
  
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Markdown in Flutter',
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
      body: SafeArea(
        child: Markdown(
          selectable: true,
          data: _md_text,
          extensionSet: md.ExtensionSet(
            md.ExtensionSet.gitHubFlavored.blockSyntaxes,
            [md.EmojiSyntax(), ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        tooltip: 'Increment',
        child: Icon(Icons.arrow_back_ios_rounded),
      ), 
    );
  }
}