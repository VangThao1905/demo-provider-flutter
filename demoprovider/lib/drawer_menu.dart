import 'package:demoprovider/about.dart';
import 'package:demoprovider/home.dart';
import 'package:demoprovider/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Center(
              child: Text(
                'Provider',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(color: Colors.teal),
          ),
          ListTile(
            title: const Text("Home"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          getLine(),
          ListTile(
            title: const Text("About"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          getLine(),
          ListTile(
            title: const Text("Settings"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
        ],
      ),
    );
  }

  Widget getLine() {
    return SizedBox(
      height: 0.5,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  Widget getListTile(title, {required Function onTap}) {
    return ListTile(
      title: Text(title),
      onTap: () => onTap,
    );
  }
}
