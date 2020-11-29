import 'package:day3_training/page_ui/menu/page_bottom_bar.dart';
import 'package:day3_training/page_ui/menu/page_dropdown_menu.dart';
import 'package:flutter/material.dart';

class PageMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Menu Item'),
        backgroundColor: Colors.brown,
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageDropDown()));

                },
                child: Text('Menu Dropdown'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageBottomBar()));

                },
                child: Text('Menu Bottom Bar'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
