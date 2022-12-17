import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_uas/model/provinsi.dart';

Future<List<Provinsi>> fetchProvinsi(http.Client client) async {
  // String key = "ff6d04e787d82c0a9b64e35b58519529"; // isi dengan api key anda.
  final response = await client
      .get(Uri.parse('https://data.covid19.go.id/public/api/prov.json'));
  return compute(parseProvinsi, response.body);
}

List<Provinsi> parseProvinsi(String responseBody) {
  final parsed =
      jsonDecode(responseBody)['list_data'].cast<Map<String, dynamic>>();
  return parsed.map<Provinsi>((json) => Provinsi.fromJson(json)).toList();
}
