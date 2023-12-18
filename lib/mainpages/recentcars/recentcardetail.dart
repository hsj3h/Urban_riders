import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_riders/cardetailists/allcarslist/allcarsclass.dart';
import 'package:urban_riders/components/homenavigationbar.dart';
import 'package:urban_riders/mainpages/recentcars/recentcarsclass.dart';
import 'package:urban_riders/components/themes.dart';


import '../../mainpages/homepage.dart';
class RecentdetailScreen extends StatefulWidget {
  final NewCars newcar;
  RecentdetailScreen({required this.newcar});





  @override
  State<RecentdetailScreen> createState() => _RecentdetailScreenState();
}

class _RecentdetailScreenState extends State<RecentdetailScreen> {

  DateTime _pickupDate = DateTime.now();

  DateTime _dropDate = DateTime.now().add(const Duration(days: 1));
// date Picker
  Future<void> _selectDate(BuildContext context, bool isPickupDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isPickupDate ? _pickupDate : _dropDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (picked != null) {
      setState(() {
        if (isPickupDate) {
          _pickupDate = picked;
          print(_pickupDate);
        } else {
          _dropDate = picked;
          print(_dropDate);
        }
      });
    }
  }
  // List of plans


  @override
  Widget build(BuildContext context) {
    var rate=widget.newcar.price;
    var amount=rate+3000;
    int days=_dropDate.difference(_pickupDate).inDays;
    print(days);
    var total=amount*days;
    return MaterialApp(
      home: Scaffold(bottomNavigationBar: Homenavbar(),appBar: AppBar(elevation: 0,
        backgroundColor: const Color(0xFF475269),leading: GestureDetector(child: Icon(Icons.arrow_back),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }),

      ) ,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 250,
                  width: 380,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(style: BorderStyle.none),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 10,
                            blurRadius: 100,


                            blurStyle: BlurStyle.outer,
                            color: Colors.black26.withAlpha(45)
                        )
                      ]
                  ),
                  child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(widget.newcar.image,scale: 7,),
                      Text(widget.newcar.title,style:GoogleFonts.roboto(fontWeight:FontWeight.bold,fontSize: 25)),
                      Text('Rs ${widget.newcar.price}/day',style:GoogleFonts.roboto(fontWeight:FontWeight.w500,fontSize: 15)),
                      GestureDetector(
                        child: Container(
                          height: 40,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: buttonColor,
                          ),
                          child: Center(child: Text('Select',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
                        ),
                        onTap: (){

                        },
                      ),
                    ],
                  )),SizedBox(
                height: 50,
              ),

              // pickup drop button
              Container(margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.circular(50)
                ),

                child:
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Column(
                              children: [
                                Text(
                                  'Pickup Date:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  '${_pickupDate.toLocal()}'.split(' ')[0],
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                ),

                                GestureDetector(
                                  child: Container(height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color:buttonColor,
                                    ),
                                    child: Center(child: Text('Pickup Date',
                                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),),
                                  onTap: (){_selectDate(context, true);},
                                ),
                              ],
                            ),
                            SizedBox(width: 16,),


                            Column(
                              children: [
                                Text(
                                  'Drop Date:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  '${_dropDate.toLocal()}'.split(' ')[0],
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  child: Container(height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color:buttonColor,
                                    ),
                                    child: Center(child: Text('DropDate',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),

                                  ),onTap: (){_selectDate(context, false);


                                },
                                ),
                              ],
                            ),
                            SizedBox(height: 100,),
                          ]
                      ),




                    ],
                  ),
                ),
              ),
              // plan
              SizedBox(
                  width: 400,
                  height: 400,

                  child: CarouselSlider(
                    items:[
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color(0xff678f2e),
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(child: Text('Premium',style: GoogleFonts.magra(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)),

                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('No Security Deposit',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Unlimited KMs',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Cancelation as per Policy',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Amendable',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Damage policy inline with T&C',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Container(height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color:Color(0xff457205),
                              ),
                              child: Center(child: Text('Select',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),)



                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color(0xfff59949),
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(child: Text('Plus',style: GoogleFonts.magra(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)),

                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('No Security Deposit-${'3000'}',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('${'200'} KMs',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Cancelation as per Policy',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Amendable',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Additional KM Charge-9/km',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Container(height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color:Color(0xffff810a),
                              ),
                              child: Center(child: Text('Select',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),)



                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color(0xff9ceaf7),
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(child: Text('Basic',style: GoogleFonts.magra(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)),

                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Security Deposit -Rs5000',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('100 KMs',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Cancelation as per Policy',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Amendable',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.check,size: 28,color: Colors.white,),SizedBox(width: 10,),
                                Text('Additiinal KM charge-Rs 9/km',style: GoogleFonts.cabin(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white)),
                              ],
                            ),
                            Container(height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color:Color(0xff03d9fc),
                              ),
                              child: Center(child: Text('Select',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),)



                          ],
                        ),
                      )





                    ],
                    options:CarouselOptions(
                        height: 500,
                        aspectRatio: 16/8,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: true,
                        autoPlay: false,
                        autoPlayInterval: const Duration(seconds: 8),
                        autoPlayAnimationDuration: const Duration(seconds: 3),
                        autoPlayCurve: Curves.easeIn,
                        scrollDirection: Axis.horizontal,
                        enlargeCenterPage:true
                    ),


                  ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: buttonColor,
                      ),
                      child: Center(child: Text('Select',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
                    ),
                    onTap: (){
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 200.0,
                            child:  Center(
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Total Payable Amount Rs ${total}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text(
                                    "Vehicle Rental Charge     Rs ${widget.newcar.price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
                                  ),

                                  Text('Number of days      ${days}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                                  Container(
                                    height: 40,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      color: buttonColor,
                                    ),
                                    child: Center(child: Text('Proceed',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
                                  )


                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              // benefits
              Column(
                children: [
                  Divider(height: 1,
                    thickness: 0.3,
                    color: Colors.black,
                    indent: 20,
                    endIndent: 20,),
                  const SizedBox(height: 20,),
                  Text('Benefits with Urban Rider',style: GoogleFonts.habibi(fontWeight: FontWeight.bold,fontSize: 20),),
                  const SizedBox(height: 20,),

                  CarouselSlider(
                    items:[
                      Container(
                        margin:const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(16.0),
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.2),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [BoxShadow(
                                color:Colors.black,
                                offset: Offset.zero,
                                blurRadius: 5,
                                blurStyle: BlurStyle.outer

                            )]
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('No Extra charge',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold)),SizedBox(height: 10,),
                            Text('Your booking fee shown is all inclusive with no additional charges or deposit fees to be paid to the host',
                              style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w400),)

                          ],
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.all(5),
                        padding: EdgeInsets.all(16.0),
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.2),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [BoxShadow(
                                color:Colors.black,
                                offset: Offset.zero,
                                blurRadius: 5,
                                blurStyle: BlurStyle.outer

                            )]
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('100% Privacy',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold)),SizedBox(height: 10,),
                            Text('Unlock an all new experiane with self drive !You  enjoy an extra space with no external or unknown driver in your car,stop whee you want and change your route without any fuss',
                              style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w400),)

                          ],
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.all(5),
                        padding: EdgeInsets.all(16.0),
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.2),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [BoxShadow(
                                color:Colors.black,
                                offset: Offset.zero,
                                blurRadius: 5,
                                blurStyle: BlurStyle.outer

                            )]

                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('24x7 Road Side Assistance',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold)),SizedBox(height: 10,),
                            Text('Rest assured ,we provide 24x7 roadside assistane with every booking.Your safety is paramount,and our assistance is always at your service.',
                              style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.w400),)

                          ],
                        ),
                      ),


                    ],
                    options:CarouselOptions(
                        height: 200,
                        aspectRatio: 16/9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: true,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 4),
                        autoPlayAnimationDuration: const Duration(seconds: 3),
                        autoPlayCurve: Curves.easeIn,
                        scrollDirection: Axis.horizontal,
                        enlargeCenterPage:true
                    ),


                  ),
                  const SizedBox(height: 20,),
                  const Divider(height: 1,
                    thickness: 0.3,
                    color: Colors.black,
                    indent: 20,
                    endIndent: 20,),
                  const SizedBox(height: 20,),
                  const Text('About Us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w200),),
                  const Text('Cotcact Us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w200),),
                  const Text('Logout',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w200),),
                  const SizedBox(height: 20,),







                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}








