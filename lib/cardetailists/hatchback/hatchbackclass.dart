import 'package:flutter/material.dart';

class HatchBack{
  final String title,subtitle,image,year,text1;
  int price;

  HatchBack({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    required this.year,
    required this.text1
  });

}
List <HatchBack>hatchbackcarlist=[
  HatchBack(title: 'Eartiga',
      subtitle: 'text',
      image: 'assets/car/landcruiserlandcruiserrightfrontthreequarter.png',
      price: 18900,
      year: '2019',
      text1: 'text1'
  ),
  HatchBack(title: 'Lamborgini Urus',
      subtitle: 'text',
      image: 'assets/car/urusperformanteurusperformanterightfrontthreequarter.png',
      price: 89000,
      year: '2020',
      text1: 'text'
  )
];



class Plan{
  String plans;
  int deposit;
  Plan({required this.plans,required this.deposit});
}
List<Plan>listofplan=[
  Plan(plans: 'Premium', deposit: 0),
  Plan(plans: 'Plus', deposit: 3000),
  Plan(plans: 'Basic', deposit: 5000)
];



