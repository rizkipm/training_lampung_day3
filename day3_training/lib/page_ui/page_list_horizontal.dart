import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSimpleHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page List Horizontal'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [

            Container(
              height: 200,
              width: 160,
              color: Colors.green,
            ),


            Container(
              height: 200,
              width: 160,
              color: Colors.black,
            ),

            Container(
              height: 200,
              width: 160,
              color: Colors.blue,
            ),

            Container(
              height: 200,
              width: 160,
              color: Colors.orangeAccent,
            ),

          ],
        ),
      ),


    );
  }
}
