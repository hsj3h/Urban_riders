class AllCarsclass{
  final String title,subtitle,image,year,text1;
  int price;
  AllCarsclass({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    required this.year,
    required this.text1
  });
}
List <AllCarsclass>allcarlist=[
  AllCarsclass(title: 'Suzuki Wagnor',
      subtitle: 'text',
      image: 'assets/car/wagonrwagonrrightfrontthreequarter.png',
      price: 1200, year: '2017', text1: 'text1'),
  AllCarsclass(title: 'Amg A35',
      subtitle: 't',
      image: 'assets/car/amga35amga35rightfrontthreequarter-min.png',
      price: 9700, year: '2018', text1: 'text1'),
  AllCarsclass(title: 'BMW M4 Sports',
      subtitle: "subtitle",
      image: 'assets/car/m4competitionm4competitionrightfrontthreequarter.png',
      price: 32000, year: '2022', text1: 'text1'),

  AllCarsclass(
      title: 'Eartiga',
      subtitle: 'text',
      image: 'assets/car/landcruiserlandcruiserrightfrontthreequarter.png',
      price: 18900,
      year: '2019',
      text1: 'text1'
  ),
  AllCarsclass(title: 'Lamborgini Urus',
      subtitle: 'text',
      image: 'assets/car/urusperformanteurusperformanterightfrontthreequarter.png',
      price: 89000,
      year: '2020',
      text1: 'text',
  ),
  AllCarsclass(title: 'Tata Altroz',
      subtitle: 'su',
      image: 'assets/car/altrozaltrozrightfrontthreequarter-min.png',
      price: 900, year: '2020', text1: 'text1')
];
