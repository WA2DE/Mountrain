class PlaceInfo {
  final String location, image, name, desc, rating;
  final int distance, days;

  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
    required this.rating,
  });
}

List places = [
  PlaceInfo(
      desc:
          "Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat. Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggian 3.726 mdpl serta terletak pada lintang 8º25' LS dan 116º28' BT ini merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya.",
      name: "Mount Rinjani",
      image: "assets/Rinjani2.png",
      location: "Lombok, NTB",
      distance: 500,
      rating: "5.0",
      days: 1),
  PlaceInfo(
      desc:
          "Gunung Bromo atau dalam bahasa Tengger dieja Brama, juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia.",
      name: "Mount Bromo",
      image: "assets/bromo1.png",
      location: "Probolinggo, JATIM",
      distance: 300,
      rating: "4.5",
      days: 1),
  PlaceInfo(
      desc:
          "Gunung Kelimutu adalah gunung berapi yang terletak di Pulau Flores, Provinsi NTT, Indonesia. Lokasi gunung ini tepatnya di Desa Pemo, Kecamatan Kelimutu, Kabupaten Ende. Gunung ini memiliki tiga buah danau Diarsipkan 2017-03-04 di Wayback Machine. kawah di puncaknya",
      name: "Mount Kelimutu",
      image: "assets/Kelimutu1.png",
      location: "Flores, NTT",
      distance: 500,
      rating: "4.7",
      days: 1),
  PlaceInfo(
      desc:
          "Gunung Gede berada dalam ruang lingkup Taman Nasional Gede Pangrango, yang merupakan salah satu dari lima taman nasional yang pertama kali diumumkan di Indonesia pada tahun 1980. Gunung ini berada di dua wilayah kabupaten yaitu Kabupaten Cianjur dan Sukabumi, dengan ketinggian 1.000 - 2.958 m.",
      name: "Mount Gede",
      image: "assets/Gede1.png",
      location: "Cianjur, JABAR",
      distance: 500,
      rating: "4.5",
      days: 1),
];
