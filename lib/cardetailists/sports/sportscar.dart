import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/sports/sportscarclass.dart';
import 'package:urban_riders/cardetailists/sports/sportscarsmodel.dart';

import 'package:urban_riders/mainpages/homepage.dart';

import '../../components/homenavigationbar.dart';
class SportsCar extends StatelessWidget {
  const SportsCar({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false
      ,
      home: Scaffold(bottomNavigationBar: Homenavbar(),
          appBar: AppBar(
            backgroundColor: Color(0xFF475269),leading: GestureDetector(child: Icon(Icons.arrow_back),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }),

          ),

          body:Column(
            children:List.generate(
                sportscarlist.length,
                    (index) => SportsCarCard(spcars: sportscarlist[index])


          )





          )

      ));


  }
}

