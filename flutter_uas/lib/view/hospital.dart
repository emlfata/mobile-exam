import 'package:flutter/material.dart';
import 'package:flutter_uas/model/hospital.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_uas/viewmodel/fetchHospital.dart';
import 'package:get/get.dart';

class HospitalScreen extends StatelessWidget {
  final int indexdata;
  const HospitalScreen(this.indexdata);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rumah Sakit Rujukan'),
      ),
      body: FutureBuilder<List<Hospital>>(
        future: fetchHospital(http.Client()),
        builder: (context, snapshot) {
          // ignore: avoid_print
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListHospital(hospital: snapshot.data)
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class ListHospital extends StatelessWidget {
  final List<Hospital>? hospital;

  const ListHospital({Key? key, required this.hospital}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: hospital?.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${hospital![index].name}"),
            subtitle: Text("${hospital![index].province}"),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    color: Colors.green,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('${hospital![index].address}'),
                          Text('${hospital![index].phone}'),
                          SizedBox(height: 50),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber),
                            child: const Text('Close'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
