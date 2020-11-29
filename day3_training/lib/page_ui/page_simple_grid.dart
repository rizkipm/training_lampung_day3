import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSimpleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Simple Grid'),
        backgroundColor: Colors.green,
      ),

      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(12, (index){
          int nIndex = index;
          String dataIndex = "$nIndex";
          return Center(
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.orangeAccent,
              height: 100,
              width: 100,
              child: Text('Data Index ke : $dataIndex'),
            )
          );

        }),
      ),
    );
  }
}
