import 'package:flutter/material.dart';
import 'package:flutter_uas/view/hospital.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_uas/model/provinsi.dart';
import 'package:flutter_uas/viewmodel/fetchProvinsi.dart';
import 'package:flutter_uas/view/detailProvinsi.dart';
import 'package:flutter_uas/member.dart';

class ProvinsiScreen extends StatelessWidget {
  final int indexdata;
  const ProvinsiScreen(this.indexdata);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persebaran COVID-19 Indonesia'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              // alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 250,
              color: Colors.green,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(123, 1, 50, 100),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/profile/${data[indexdata].profile}"),
                            fit: BoxFit.cover),
                      ),
                      height: 125,
                      width: 125,
                      margin: EdgeInsets.only(top: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${data[indexdata].name}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text("${data[indexdata].email}"),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text("Hospital"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HospitalScreen(indexdata),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: FutureBuilder<List<Provinsi>>(
        future: fetchProvinsi(http.Client()),
        builder: (context, snapshot) {
          // ignore: avoid_print
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListProvinsi(provinsi: snapshot.data)
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class ListProvinsi extends StatelessWidget {
  final List<Provinsi>? provinsi;

  const ListProvinsi({Key? key, required this.provinsi}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: provinsi?.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProvinsi(
                    provinsi: provinsi![index],
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(provinsi![index].key,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
