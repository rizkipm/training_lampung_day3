import 'package:flutter/material.dart';

class PageDetailCostumGrid extends StatelessWidget {
  //constructor
  String nama, gambar, ket;

  PageDetailCostumGrid({this.nama, this.gambar, this.ket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('$nama'),
      ),
      body: ListView(
        children: [
          Container(
            height: 240,
            child: Hero(
              tag: '$nama',
              child: Image.asset(
                'images/$gambar',
                fit: BoxFit.contain,
              ),
            ),
          ),
          BagianNama(
            nama: nama,
          ),

          BagianKeterangan(
            keterangan: ket,
          )
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  String nama;

  BagianNama({this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Text(
                '$nama\@gmail.com',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ],
          )),

          Row(
            children: [
              Icon(Icons.star, size: 48, color: Colors.green,),
              Text('14')
            ],
          )
        ],
      ),
    );
  }
}

class BagianKeterangan extends StatelessWidget {

  String keterangan;
  BagianKeterangan({this.keterangan});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Text('$keterangan'),
        ),
      ),
    );
  }
}

