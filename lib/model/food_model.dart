// APPBAR DATA
import 'package:flutter/foundation.dart';

final urlImages = [
  'assets/images/header_banner.jpg',
  'assets/images/header_banner3.jpg',
  'assets/images/header_banner2.jpg',
  'assets/images/header_banner4.jpg',
];
final titleEvents = [
  'UMK food tour 2023\n',
  'Pasar Loka 2024\n',
  'Kompetisi Masakan Lokal\n',
  'Festival Sate\n',
];
final subtitleEvents = [
  'Yuk, mari bersama-sama merayakan kekayaan kuliner lokal di acara bazar makanan!',
  'Rasakan cita rasa asli Indonesia di Pasar Makanan Lokal',
  'Berkompetisi dengan seni memasak, mengembangkan budaya kuliner Indonesia!',
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

class Food {
  final String image, title, description;
  final List<String> category;
  final List<String> icon;
  final int price, id;

  Food({
    required this.image,
    required this.title,
    required this.description,
    required this.category,
    required this.icon,
    required this.price,
    required this.id,
  });
}

List<Food> food = [
  Food(
    id: 1,
    title: 'Mie Goreng Makassar',
    description:
        'Mie goreng Makasar adalah hidangan mie goreng khas Makassar yang terbuat dari mie kuning yang digoreng dengan telur, bawang putih, bawang merah, cabai, dan rempah-rempah khas Sulawesi seperti kunyit, ketumbar, dan lada hitam. Makanan ini sering disajikan dengan acar dan kerupuk sebagai pelengkapnya.',
    category: [categories![0], categories![1]],
    icon: [iconku[0], iconku[1]],
    price: 12000,
    image: 'assets/images/foods/product_1.png',
  ),
  Food(
    id: 2,
    title: 'Mie Goreng Jawa',
    description:
        'Mie goreng Jawa adalah hidangan mie goreng yang berasal dari Jawa Tengah dan Jawa Timur. Mie kuning digoreng dengan bumbu-bumbu seperti kecap manis, bawang putih, bawang merah, cabai, dan rempah-rempah seperti kemiri, jinten, dan ketumbar. Makanan ini sering disajikan dengan telur goreng, kerupuk, dan irisan sayuran sebagai pelengkapnya.',
    category: [categories![4], categories![1]],
    icon: [iconku[4], iconku[1]],
    price: 14500,
    image: 'assets/images/foods/product_2.png',
  ),
  Food(
    id: 3,
    title: 'Nasi Salad',
    description:
        'Nasi salad adalah hidangan nasi yang diaduk dengan aneka sayuran seperti selada, tomat, timun, wortel, dan kacang-kacangan. Dapat juga ditambahkan potongan daging ayam atau tuna, telur rebus, dan saus salad. Makanan ini dapat disajikan sebagai makanan ringan atau hidangan utama yang sehat dan segar.',
    category: [categories![1], categories![4]],
    icon: [iconku[1], iconku[4]],
    price: 10000,
    image: 'assets/images/foods/product_3.png',
  ),
  Food(
    id: 4,
    title: 'Seblak',
    description:
        'Seblak adalah hidangan mi basah yang berasal dari Bandung, Jawa Barat. Mi digoreng bersamaan dengan aneka sayuran seperti kol, wortel, dan kacang tanah, serta diberi bumbu pedas seperti cabai, bawang putih, dan kecap manis. Makanan ini sering disajikan dengan kerupuk sebagai pelengkapnya.',
    category: [categories![0], categories![4]],
    icon: [iconku[0], iconku[4]],
    price: 12000,
    image: 'assets/images/foods/product_4.png',
  ),
  Food(
    id: 5,
    title: 'Ayam Golek Sumatra',
    description:
        'Ayam golek adalah hidangan ayam panggang yang berasal dari Indonesia. Ayam dipanggang dengan bumbu rempah seperti jahe, lengkuas, kunyit, dan bawang putih, serta diberi saus bumbu kacang atau saus sambal sebagai pelengkapnya. Hidangan ini biasanya disajikan dengan nasi putih dan sayuran.',
    category: [categories![0], categories![4]],
    icon: [iconku[0], iconku[4]],
    price: 14500,
    image: 'assets/images/foods/product_5.png',
  ),
];
