import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_uas/model/hospital.dart';

Future<List<Hospital>> fetchHospital(http.Client client) async {
  // String key = "ff6d04e787d82c0a9b64e35b58519529"; // isi dengan api key anda.
  final response = await client
      .get(Uri.parse('https://dekontaminasi.com/api/id/covid19/hospitals'));
  return compute(parseHospital, response.body);
}

List<Hospital> parseHospital(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Hospital>((json) => Hospital.fromJson(json)).toList();
}
