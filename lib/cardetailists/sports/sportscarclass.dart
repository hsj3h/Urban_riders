class SportsCars {
  final String title, subtitle, image, year, text1;
  int price;

   SportsCars({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
    required this.year,
    required this.text1,

  });

}

List<SportsCars> sportscarlist= [
 SportsCars(
     title:'C Class' ,
     subtitle: 'Automatic',
     price: 65000,
     image: 'assets/car/cclasscclassrightfrontthreequarter.png',
     year: '2020',
     text1: 'text'),
 SportsCars(
     title: 'Lamborgini Huracane',
     subtitle: 'Automatic',
     price: 89000,
     image: 'assets/car/huracanevohuracanevorightfrontthreequarter.png',
     year: '2021',
     text1: 'text'),
 SportsCars(
     title: 'BMW M Sports',
     subtitle: 'Manual ',
     price: 36000,
     image: 'assets/car/m4competitionm4competitionrightfrontthreequarter.png',
     year: '2018',
     text1: 'text'
 ),

];