import 'package:flutter/material.dart';

// class CarModel {
//   final String name,price,image;
//   const CarModel({
//     required this.name,
//     required this.price,
//     required this.image
// });
// }
//
// List<CarModel>carmodel=[
//   CarModel(name:'Benz C Class', price: '25000', image: 'assets/images/buggatti chiron.png'),
//   CarModel(name: 'Ciaz', price: '1200', image: 'assets/car/ciazciazrightfrontthreequarter.png'),
//   CarModel(name: 'Lamborgini Huracane', price: '43000', image:'assets/car/huracanevohuracanevorightfrontthreequarter.png'),
//   CarModel(name: 'Lamborgini Huracane evo', price: '59000', image: 'assets/car/huracanstohuracanstorightfrontthreequarter.png'),
//   CarModel(name: 'BMW M4', price: '16000', image: 'assets/car/m4competitionm4competitionrightfrontthreequarter.png'),
//   CarModel(name: 'Rolls-Royce Wraith', price: '86000', image: 'assets/car/wraithwraithrightfrontthreequarter.png'),
//
//
//
// ];
//
// import 'package:flutter/material.dart';

class SedanCarModel {
  final String title, subtitle,  image, year, text1, text2, text3, text4;
  int price;

   SedanCarModel({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
    required this.year,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });
}

List<SedanCarModel> sedancarlist = [
  SedanCarModel(
    title: 'Benz C Class',
    subtitle: 'Automatic',
    price: 30000,
    image: 'assets/car/cclasscclassrightfrontthreequarter.png',
    year: '2017',
    text1: '400km',
    text2: 'Automatic',
    text3: 'Diesel',
    text4: '4 seats',
  ),
  SedanCarModel(
    title: 'Lamborghini',
    subtitle: 'Automobile',
    price: 78000,
    image: 'assets/car/ciazciazrightfrontthreequarter.png',
    year: '2020',
    text1: '450km',
    text2: 'Manual',
    text3: 'Diesel',
    text4: '4 seats',
  ),
  SedanCarModel(
    title: 'BMW L8',
    subtitle: 'Automobile',
    price: 30000,
    image: 'assets/car/huracanevohuracanevorightfrontthreequarter.png',
    year: '2019',
    text1: '350km',
    text2: 'Automatic',
    text3: 'Petrol',
    text4: '4 seats',
  ),
  SedanCarModel(
    title: 'Lexus 470',
    subtitle: 'Automobile',
    price:23000,
    image: 'assets/car/huracanstohuracanstorightfrontthreequarter.png',
    year: '2020',
    text1: '350km',
    text2: 'Automatic',
    text3: 'Petrol',
    text4: '6 seats',
  ),
];
