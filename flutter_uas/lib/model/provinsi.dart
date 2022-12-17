class Provinsi {
  final String key;
  final String docCount;
  final String jumlahKasus;
  final String jumlahSembuh;
  final String jumlahMeninggal;
  final String jumlahDirawat;

  Provinsi({
    required this.key,
    required this.docCount,
    required this.jumlahKasus,
    required this.jumlahSembuh,
    required this.jumlahMeninggal,
    required this.jumlahDirawat,
  });

  factory Provinsi.fromJson(Map<String, dynamic> json) {
    return Provinsi(
      key: json['key'].toString(),
      docCount: json['doc_count'].toString(),
      jumlahKasus: json['jumlah_kasus'].toString(),
      jumlahSembuh: json['jumlah_sembuh'].toString(),
      jumlahMeninggal: json['jumlah_meninggal'].toString(),
      jumlahDirawat: json['jumlah_dirawat'].toString(),
    );
  }
}
