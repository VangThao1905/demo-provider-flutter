import 'package:demoprovider/drawer_menu.dart';
import 'package:demoprovider/model/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  String text = lorem(paragraphs: 3, words: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Consumer<UI>(
          builder: (context, ui, child) {
            return SingleChildScrollView(
              child: RichText(
                  text: TextSpan(
                      text: text,
                      style: TextStyle(
                          fontSize: ui.fontSize, color: Colors.lightBlue))),
            );
          },
        ),
      ),
    );
  }
}
