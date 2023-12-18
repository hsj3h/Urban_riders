import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/sports/sportscar.dart';
import 'package:urban_riders/cardetailists/sports/sportscarclass.dart';
import 'package:urban_riders/cardetailists/sports/sportscardetailscreen.dart';

import '../sedann/sedandetailscreen.dart';
class SportsCarCard extends StatelessWidget {
 final SportsCars spcars;
 SportsCarCard ({required this.spcars});


  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          SingleChildScrollView(
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context, PageRouteBuilder(pageBuilder: (
                    context,primaryAnimation,secodaryAnimation)=>
                    SportsCarDetailScreen(spcars: spcars,)
                ));
              },

              child: Container(
                child:
                Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                spcars.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(height: 3.0),
                              Text('${spcars.price}/day'),
                              // Add other text widgets or content here

                              SizedBox(height: 5.0),
                              // Add other widgets here
                            ],
                          ),
                        ),
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 140.0,
                            height: 100.0,


                            child: Image.asset(
                              spcars.image,

                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,

                              alignment: Alignment.topCenter,
                            ),

                          ),SizedBox(height: 10,),

                          SizedBox(height: 10,)



                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
