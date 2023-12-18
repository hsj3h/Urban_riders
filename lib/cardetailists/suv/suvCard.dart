import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/suv/suvCarClass.dart';
import 'package:urban_riders/cardetailists/suv/suvDetailScreeen.dart';
class SuvCard extends StatelessWidget {
  final SuvCar suv;
  const SuvCard({required this.suv});



  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          SingleChildScrollView(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (context,primaryAnimaton,secondaryAnimation) =>
                    SuvDetailScreen
                      (suv: suv,)));
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
                                suv.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(height: 3.0),
                              Text('tEXT 2'),
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
                              suv.image,

                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,

                              alignment: Alignment.topCenter,
                            ),

                          ),SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)
                            ),child: Center(child: Text('Select',style: TextStyle(fontWeight: FontWeight.bold),)),
                          ),
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
