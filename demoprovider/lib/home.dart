import 'package:demoprovider/drawer_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';

import 'model/ui.dart';

const appTitle = "Demo provider";

class Home extends StatelessWidget {
  String text = lorem(paragraphs: 10, words: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Consumer<UI>(
          builder: (context, ui, child) {
            return SingleChildScrollView(
              child: RichText(
                text: TextSpan(
                    text: text,
                    style:
                        TextStyle(fontSize: ui.fontSize, color: Colors.black)),
              ),
            );
          },
        ),
      ),
    );
  }
}
