import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageDropDown extends StatefulWidget {
  @override
  _PageDropDownState createState() => _PageDropDownState();
}

class _PageDropDownState extends State<PageDropDown> {

  List<String> listKota = ["Jakarta", "Lampung", "Tangerang Selatan", "Bekasi"];

  String nKota = "Jakarta";

  int intKota;

  void pilihKota(String value){
    setState(() {
      nKota = value;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down page'),
        backgroundColor: Colors.green,
      ),

      body: Form(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text('Lokasi Kota'),
                  DropdownButton(
                    onChanged: (String value){
                      pilihKota(value);
                      intKota = listKota.indexOf(value);
                    },
                    value: nKota,
                 items: listKota.map((String value){
                   return DropdownMenuItem(
                      child: Text(value),
                     value: value,
                   );
                 }).toList(),
                  )
                ],
              ),
            ),

            Container(
              child: MaterialButton(
                child: Text('Submit'),
                color: Colors.brown,
                textColor: Colors.white,
                onPressed: (){
                  print("Kota yang dipilih " + "$intKota" + " " + nKota);

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
