import 'package:flutter/material.dart';
import 'package:flutter_uts/data.dart';

class DetailWisata extends StatelessWidget {
  final int wisata;
  const DetailWisata(this.wisata);

  @override
  Widget build(BuildContext context) {
    Widget judul = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("${data[wisata].name}",
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  Text(
                    "${data[wisata].date}",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Widget deskripsi = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        "${data[wisata].desc}",
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.left,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${data[wisata].name}",
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            "assets/images/${data[wisata].image}",
            width: 600,
            fit: BoxFit.cover,
          ),
          judul,
          deskripsi,
        ],
      ),
    );
  }
}
