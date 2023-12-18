class MpvCar{
  final String title,subtitle,image,year,text1;
  int price;
  MpvCar({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    required this.year,
    required this.text1
  });
}
List <MpvCar>mpvcarlist=[
  MpvCar(title: 'Eartiga',
      subtitle: 'text',
      image: 'assets/car/landcruiserlandcruiserrightfrontthreequarter.png',
      price: 18900,
      year: '2019',
      text1: 'text1'
  ),
  MpvCar(title: 'Lamborgini Urus',
      subtitle: 'text',
      image: 'assets/car/urusperformanteurusperformanterightfrontthreequarter.png',
      price: 89000 ,
      year: '2020',
      text1: 'text'
  )
];
