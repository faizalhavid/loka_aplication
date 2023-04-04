// APPBAR DATA
import 'package:flutter/foundation.dart';

final urlImages = [
  'assets/images/header_banner.jpg',
  'assets/images/header_banner3.jpg',
  'assets/images/header_banner2.jpg',
  'assets/images/header_banner4.jpg',
  'assets/images/header_banner4.jpg',
];
final titleEvents = [
  'UMK food tour 2023\n',
  'Pasar Loka 2024\n',
  'Kompetisi Masakan Lokal\n',
  'Festival Sate\n',
  'Festival Sate\n',
];
final subtitleEvents = [
  'Yuk, mari bersama-sama merayakan kekayaan kuliner lokal di acara bazar makanan!',
  'Rasakan cita rasa asli Indonesia di Pasar Makanan Lokal',
  'Berkompetisi dengan seni memasak, mengembangkan budaya kuliner Indonesia!',
  'Mari Rasakan Kenikmatan Sate Lokal yang Beraneka Ragam di Festival In',
  'Mari Rasakan Kenikmatan Sate Lokal yang Beraneka Ragam di Festival In',
];

// KATALOG FOOD
//=> Kategori
//
List<String>? categories = [
  'Rekomendasi',
  'Nasi',
  'Jajanan',
  'Minuman',
  'Makanan Khas'
];

List<String> iconku = [
  'assets/icons/like.png',
  'assets/icons/rice.png',
  'assets/icons/cake.png',
  'assets/icons/juice.png',
  'assets/icons/fkhas.png',
];
// => Produk

class Food extends ChangeNotifier {
  final List _fooditem = [
    [
      'Mie Goreng Makassar',
      'Mie goreng Makasar adalah hidangan mie goreng khas Makassar yang terbuat dari mie kuning yang digoreng dengan telur, bawang putih, bawang merah, cabai, dan rempah-rempah khas Sulawesi seperti kunyit, ketumbar, dan lada hitam. Makanan ini sering disajikan dengan acar dan kerupuk sebagai pelengkapnya.',
      [categories![0], categories![0]],
      [iconku[0], iconku[1]],
      '12000',
      'assets/images/foods/product_1.png',
    ],
    [
      'Mie Goreng Jawa',
      'Mie goreng Jawa adalah hidangan mie goreng yang berasal dari Jawa Tengah dan Jawa Timur. Mie kuning digoreng dengan bumbu-bumbu seperti kecap manis, bawang putih, bawang merah, cabai, dan rempah-rempah seperti kemiri, jinten, dan ketumbar. Makanan ini sering disajikan dengan telur goreng, kerupuk, dan irisan sayuran sebagai pelengkapnya.',
      [categories![4], categories![0]],
      [iconku[4], iconku[1]],
      '14500',
      'assets/images/foods/product_2.png',
    ],
    [
      'Nasi Salad',
      'Nasi salad adalah hidangan nasi yang diaduk dengan aneka sayuran seperti selada, tomat, timun, wortel, dan kacang-kacangan. Dapat juga ditambahkan potongan daging ayam atau tuna, telur rebus, dan saus salad. Makanan ini dapat disajikan sebagai makanan ringan atau hidangan utama yang sehat dan segar.',
      [categories![1], categories![4]],
      [iconku[1], iconku[4]],
      '10000',
      'assets/images/foods/product_3.png',
    ],
    [
      'Seblak',
      'Seblak adalah hidangan mi basah yang berasal dari Bandung, Jawa Barat. Mi digoreng bersamaan dengan aneka sayuran seperti kol, wortel, dan kacang tanah, serta diberi bumbu pedas seperti cabai, bawang putih, dan kecap manis. Makanan ini sering disajikan dengan kerupuk sebagai pelengkapnya.',
      [categories![0], categories![4]],
      [iconku[0], iconku[4]],
      '12000',
      'assets/images/foods/product_4.png',
    ],
  ];
  List _cartfood = [];
  get cartfood => _cartfood;
  get foodItem => _fooditem;

  void addfoodToCart(int index) {
    _cartfood.add(_fooditem[index]);
    notifyListeners();
  }

  void removeFoodFromCart(int index) {
    cartfood.removeAt(index);
    notifyListeners();
  }

  String calculatePrice() {
    int totalPrice = 0;
    for (int i = 0; i < cartfood.length; i++) {
      totalPrice += int.parse(cartfood[i][4]);
    }
    return totalPrice.toString();
  }
}
