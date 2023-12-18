import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_riders/mainpages/recentcars/recentcardetail.dart';
import 'package:urban_riders/mainpages/recentcars/recentcarsclass.dart';

class NewCarsmodel extends StatelessWidget {
  final NewCars newcar;
  NewCarsmodel({required this.newcar});


  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          SingleChildScrollView(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, primaryAnimation, secondaryAnimation) =>
                          RecentdetailScreen(newcar: newcar )
                  ),
                );
              },
              child: Card(
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
                                newcar.title,
                                style: GoogleFonts.dmSerifText(fontSize: 20,fontWeight: FontWeight.bold)
                            ),
                            const SizedBox(height: 3.0),
                            Text('${newcar.price}/day',style: GoogleFonts.dmSans(fontSize: 18),),
                            // Add other text widgets or content here

                            const SizedBox(height: 5.0),
                            // Add other widgets here
                          ],
                        ),
                      ),
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 140.0,
                          height: 100.0,


                          child: Image.asset(
                            newcar.image,

                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,

                            alignment: Alignment.topCenter,
                          ),

                        ),const SizedBox(height: 10,),
                        // Container(
                        //   height: 30,
                        //   width: 90,
                        //   decoration: BoxDecoration(
                        //     color: Colors.green,
                        //     borderRadius: BorderRadius.circular(10)
                        //   ),child: Center(child: Text('Select',style: TextStyle(fontWeight: FontWeight.bold),)),
                        // ),
                        const SizedBox(height: 10,)



                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
  }
}
