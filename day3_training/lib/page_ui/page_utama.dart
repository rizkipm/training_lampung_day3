import 'package:day3_training/page_ui/menu/page_dropdown_menu.dart';
import 'package:day3_training/page_ui/page_costum_grid.dart';
import 'package:day3_training/page_ui/page_list_horizontal.dart';
import 'package:day3_training/page_ui/page_simple_grid.dart';
import 'package:day3_training/page_ui/page_simple_list.dart';
import 'package:flutter/material.dart';

class PageUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Page Utama'),
      ),


      body: Center(
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSimpleList()));
                },
                child: Text('Simple List'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSimpleHorizontal()));
                },
                child: Text('List Vertical'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: (){},
                child: Text('List Horizontal'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSimpleGrid()));

                },
                child: Text('Simple Grid'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageCostumGrid()));

                },
                child: Text('Costum Gridview'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageDropDown()));

                },
                child: Text('Menu Item Widget'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

          ],
        ),
      ),
    )
    ;
  }
}
