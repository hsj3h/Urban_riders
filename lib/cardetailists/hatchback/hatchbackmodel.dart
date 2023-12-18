import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:urban_riders/cardetailists/hatchback/hatchbackclass.dart';
import 'package:urban_riders/cardetailists/mpv/mpvcarclass.dart';


import 'hatchbckscreen.dart';



class HatchBackClss extends StatelessWidget {
  final HatchBack hatchback;
  HatchBackClss({required this.hatchback});



  @override
  Widget build(BuildContext context) {
    return
      Container(

        child: Column(
          children: [
            SingleChildScrollView(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, primaryAnimation, secondaryAnimation) =>
                            HatchbackDetailScreen( hatchback: hatchback)
                    ),
                  );
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
                                    hatchback.title,
                                    style: GoogleFonts.dmSerifText(fontSize: 20,fontWeight: FontWeight.bold)
                                ),
                                SizedBox(height: 3.0),
                                Text('${hatchback.price}/day',style: GoogleFonts.dmSans(fontSize: 18),),
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
                                hatchback.image,

                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,

                                alignment: Alignment.topCenter,
                              ),

                            ),SizedBox(height: 10,),
                            // Container(
                            //   height: 30,
                            //   width: 90,
                            //   decoration: BoxDecoration(
                            //     color: Colors.green,
                            //     borderRadius: BorderRadius.circular(10)
                            //   ),child: Center(child: Text('Select',style: TextStyle(fontWeight: FontWeight.bold),)),
                            // ),
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
