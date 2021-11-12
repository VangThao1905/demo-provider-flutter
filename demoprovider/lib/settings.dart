import 'package:demoprovider/drawer_menu.dart';
import 'package:demoprovider/model/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Consumer<UI>(
        builder: (context, ui, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Font size:${ui.fontSize.toInt()}',
                  style: TextStyle(
                      //fontSize: Theme.of(context).textTheme.headline5.fontSize),
                      fontSize: 20),
                ),
              ),
              Slider(
                  min: 0.5,
                  value: ui.sliderFontSize,
                  onChanged: (newValue) {
                    ui.fontSize = newValue;
                  })
            ],
          );
        },
      ),
    );
  }
}
