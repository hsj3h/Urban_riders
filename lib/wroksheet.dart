import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Car {
  final String model;
  final String make;
  final int year;
  final String color;

  Car({
    required this.model,
    required this.make,
    required this.year,
    required this.color,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarGroupPage(),
    );
  }
}

class CarGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Group'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the CarDetailsPage with a specific car
            navigateToCarDetailsPage(
              context,
              Car(model: 'SedanXYZ', make: 'Toyota', year: 2022, color: 'Blue'),
            );
          },
          child: Text('Select Car'),
        ),
      ),
    );
  }

  void navigateToCarDetailsPage(BuildContext context, Car car) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CarDetailsPage(car)),
    );
  }
}

class CarDetailsPage extends StatelessWidget {
  final Car car;

  CarDetailsPage(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Model: ${car.model}'),
            Text('Make: ${car.make}'),
            Text('Year: ${car.year}'),
            Text('Color: ${car.color}'),
          ],
        ),
      ),
    );
  }
}
