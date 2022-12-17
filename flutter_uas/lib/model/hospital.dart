class Hospital {
  final String name;
  final String address;
  final String region;
  final String phone;
  final String province;

  Hospital({
    required this.name,
    required this.address,
    required this.region,
    required this.phone,
    required this.province,
  });

  factory Hospital.fromJson(Map<String, dynamic> json) {
    return Hospital(
      name: json['name'].toString(),
      address: json['address'].toString(),
      region: json['region'].toString(),
      phone: json['phone'].toString(),
      province: json['province'].toString(),
    );
  }
}
