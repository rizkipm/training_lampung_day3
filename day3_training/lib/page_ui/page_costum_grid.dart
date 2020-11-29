import 'package:day3_training/page_ui/page_detail_costum_grid.dart';
import 'package:flutter/material.dart';

class PageCostumGrid extends StatefulWidget {
  @override
  _PageCostumGridState createState() => _PageCostumGridState();
}

class _PageCostumGridState extends State<PageCostumGrid> {

  //deklarasi data list

  List<Container> dataList = new List();

  var dataItemList = [
    {"nama":"Gambar 1", "gambar_file":"asean.png", "keterangan":"Ini keterangan dari gambar1"},
    {"nama":"Gambar 2", "gambar_file":"english.jpeg", "keterangan":"Ini keterangan dari gambar2"},
    {"nama":"Gambar 3", "gambar_file":"mortarboard.png", "keterangan":"Ini keterangan dari gambar3"},
  ];

  _buatMethodList() async{

    for(var i=0; i<dataItemList.length; i++){
      final dataGambar = dataItemList[i];

      final String namaGambar = dataGambar['gambar_file'];

      dataList.add(Container(
          padding: EdgeInsets.all(10),
          child: Card(
            child: InkWell(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    PageDetailCostumGrid(
                      nama: dataGambar['nama'],
                      gambar: namaGambar,
                      ket: dataGambar['keterangan'],
                    )
                ));
              },
              child: Column(
                children: [
                  Hero(
                    tag: dataGambar['nama'],
                    child: Image.asset('images/$namaGambar', height: 100, width: 125, fit: BoxFit.contain),

                  ),

                  Padding(padding: EdgeInsets.all(5)),
                  Text(dataGambar['nama'],style: TextStyle(fontSize: 14, color: Colors.orange),)
                ],
              ),
            ),
          ),
      ));


    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatMethodList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Costum Grid View'),
      ),
      
      body: GridView.count(crossAxisCount: 2, children: dataList,),

    );
  }
}
