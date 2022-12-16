List<wisata> data = [
  wisata(
    name: "Dino Mall",
    date: "Senin, 3 Oktober 2022",
    desc:
        "Dino Mall ini berlokasi di Kota Batu, Jawa Timur yang masih satu bagian dengan Jawa Timur Park 3. Selain menyajikan hiburan, Dino Mall banyak menyajikan wisata alam dan edukasi. \n\nWahana di Dino Mall sendiri terbilang sangat banyak dan semua bisa anda nikmati dengan harga yang fariatif. \n\nIni adalah beberapa wahana yang ada di Dino Mall diantaranya adalah Fun Tech Plaza, Infinity World, Ice Cream World, Museum Musik Dunia, Circus Magic, The Legend Star, Milenial Glow Garden, Terminal Selfie, dan Dino Park.",
    image: "dino_mall.jpg",
  ),
  wisata(
    name: "Alun-Alun Malang",
    date: "Selasa, 4 Oktober 2022",
    desc:
        "Alun-Alun Kota Malang merupakan tempat favorit bagi warga Malang untuk bersantai bersama keluarga menikmati suasana kota. Di Alun-Alun ini, Anda dapat menikmati keindahan air mancur taman yang terletak tepat di tengah Alun-Alun. Bukan hanya keindahan air mancur, ratusan burung merpati selalu menemani langkah Anda ketika berada di Alun-Alun Kota Malang. Ratusan burung merpati tersebut memang ditempatkan dan dirawat di Alun-Alun Kota Malang untuk lebih memberikan nuansa yang asri dan indah. \nDi Alun-Alun Kota Malang ini juga terdapat fasilitas hotspot yang sengaja disediakan untuk layanan pelengkap bagi pengunjung yang datang ke sini. Tidak jauh dari Alun-Alun, juga terdapat beberapa pusat perbelanjaan keluarga yang dapat Anda singgahi misalnya saja Sarinah, Ramayana, Malang Plaza, Mitra 1 dan masih banyak pusat perbelanjaan lainnya yang berlokasi kurang lebih 100 m dari pusat kegiatan warga tersebut. Selain pusat perbelanjaan, tepat di depan Alun-Alun Kota Malang, ini berdiri kokoh Masjid Agung Jami Kota Malang yang terkenal akan keindahan arsitekturnya.",
    image: "alun_alun_malang.jpg",
  ),
  wisata(
    name: "Air Terjun Coban Rondo",
    date: "Rabu, 5 Oktober 2022",
    desc:
        "Terdapat beberapa destinasi kawasan wisata yang memiliki keindahan alam yang eksotis dan mempesona di kota Malang yang tidak boleh dilewatkan yaitu salah satunya Coban Rondo. Coban Rondo ini merupakan air terjun yang miliki ketinggian 84 meter dan merupakan salah satu tempat wisata yang menyajikan panorama alam dengan air terjunnya yang indah. Tempat wisata air terjun Coban Rondo ini terletak di Kecamatan Pujon yang dekat dengan Kota Batu, Kabupaten Malang. Air terjun Coban Rondo ini memiliki ketinggian kira-kira 1.135 meter diatas permukaan laut, dan sumber mata airnya terletak di kaki lereng Gunung Kawi yang tidak jauh dari kawasan Coban Rondo itu sendiri.",
    image: "air_terjun_coban.jpg",
  ),
  wisata(
    name: "Jatim Park 1",
    date: "Kamis, 6 Oktober 2022",
    desc:
        "Objek wisata Jatim Park 1 Batu Malang merupakan pionir atau barometer wisata-wisata modern di Malang. Ya didirikan diatas lahan seluas 22 hektar dan hanya berjarak 5 kilometer saja dari pusat kota Batu. Akses jalan pun sangat bagus serta mudah terjangkau baik menggunakan kendaraan pribadi maupun angkutan umum. Mungkin kemudahan mencapai lokasi wisata, berperan besar mendongkrak daya tarik wisata terhadap pengunjung.",
    image: "jatim_park1.jpg",
  ),
  wisata(
    name: "Pantai Parang Dowo",
    date: "Jum'at, 7 Oktober 2022",
    desc:
        "Pantai Parang Dowo atau juga dikenal dengan Pantai Karang Dowo beralamat di Desa Gajahrejo, Kecamatan Gedangan, Kabupaten Malang, Jawa Timur. Disebut ‘Karang Dowo’ karena terdapat sebuah pengangkatan karang dengan tinggi sekitar 2 meter dan panjang sekitar 1 km yang membatasi bibir pantai dengan lautan lepas. Karang tersebut layaknya tanggul yang menghadang setiap ombak yang datang.",
    image: "pantai_parang_dowo.jpg",
  )
];

class wisata {
  String name;
  String date;
  String desc;
  String image;

  wisata({
    required this.name,
    required this.date,
    required this.desc,
    required this.image,
  });
}
