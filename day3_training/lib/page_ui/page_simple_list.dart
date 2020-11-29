import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSimpleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Simple List'),
        backgroundColor: Colors.green,
      ),

      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm'),
            ),
          ),

          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
          ),

          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}
