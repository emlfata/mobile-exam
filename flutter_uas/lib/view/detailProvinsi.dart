import 'package:flutter/material.dart';
import 'package:flutter_uas/model/provinsi.dart';

class DetailProvinsi extends StatelessWidget {
  final Provinsi provinsi;

  const DetailProvinsi({Key? key, required this.provinsi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget deskripsi = Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            "Jumlah Kasus         : ${provinsi.jumlahKasus}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Jumlah Sembuh     : ${provinsi.jumlahSembuh}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Jumlah Meninggal : ${provinsi.jumlahMeninggal}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "Jumlah Dirawat      : ${provinsi.jumlahDirawat}",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(provinsi.key),
      ),
      body: ListView(
        children: <Widget>[
          deskripsi,
        ],
      ),
    );
  }
}
