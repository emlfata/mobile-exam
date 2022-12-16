import 'package:get/get.dart';
import 'package:flutter_uas/app/data/models/provinsi_model.dart';
import 'package:flutter_uas/app/data/providers/provinsi_provider.dart';

class HomeController extends GetxController {
  Future<List<Provinsi>?> getprovinsi() async {
    ProvinsiProvider dataprovinsi = ProvinsiProvider();

    var hasil = await dataprovinsi.getProvinsi();

    return hasil;
  }
}
