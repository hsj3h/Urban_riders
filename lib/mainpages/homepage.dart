import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/mpv/mpvcar.dart';
import 'package:urban_riders/mainpages/recentcars/recentcarmodels.dart';
import 'package:urban_riders/mainpages/recentcars/recentcarsclass.dart';
import 'package:urban_riders/cardetailists/sports/sportscar.dart';
import 'package:urban_riders/cardetailists/suv/suv.dart';
import 'package:urban_riders/cardetailists/sedann/sedan.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_riders/components/themes.dart';
import '../cardetailists/allcarslist/allcars.dart';
import '../cardetailists/allcarslist/allcarsclass.dart';

import '../cardetailists/hatchback/hatchback.dart';
import '../components/homenavigationbar.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Map<String,dynamic>>types=[
    {'cartype':'Sedan',
      'image':'assets/category/imagecompressor/sedan-min.png'

    },

    {
      'cartype':'HatchBack',
      'image':'assets/category/imagecompressor/hatchback-min.png'
    },

    {
      'cartype':'MPV',
      'image':'assets/category/imagecompressor/mpv-min.png'
    },
    {
      'cartype':'Sports Car',
      'image':'assets/category/imagecompressor/Sportscar-min.png'
    },
    {
      'cartype':'SUV',
      'image':'assets/category/imagecompressor/suv-min.png'
    },


  ];
  List<AllCarsclass>searchedlist=[];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      searchedlist=allcarlist;
    });
  }
  onSearch(String search){
  print(search);
  }



  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
        ),
          bottomNavigationBar: const Homenavbar(),






        body:
        SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Let\'s find your favorite car here ',style: GoogleFonts.macondo(fontSize: 40)),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search your car',
                    filled: true,

                    contentPadding: EdgeInsets.all(0),
                    prefix: Icon(Icons.search,color: Colors.black),
                    hintStyle:GoogleFonts.roboto(),
                    border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40))
                ),onChanged: (value)=>onSearch(value),
              ),
              const SizedBox(height: 10,),


              SizedBox(
                height: 140,
                child: ListView.builder(itemBuilder: (context,index){
                  return Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(padding: const EdgeInsets.fromLTRB(00, 5, 5, 0),
                              height: 100,
                              width: 95,
                              child: Image.asset(types[index]['image']),

                            ),onTap: (){
                            if (index ==0){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SedanPage()));
                            }else if (index==1){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Hatchback()));
                            }else if (index ==2){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MpvPages()));
                            }else if (index==3){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>const SportsCar()));
                            }  else if (index==4){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const SuvPage()));
                            }


                          },
                          ),
                          Text(types[index]['cartype'],style: GoogleFonts.dmSerifText(fontSize: 14,fontWeight: FontWeight.w300),),




                          // [Image.asset(aboutcar[index]['dp'],height: 80,width: 80,),

                        ],
                      ),
                    ],
                  );


                },itemCount: types.length,scrollDirection: Axis.horizontal,),
              ),
              CarouselSlider(
                  items:[
                    Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(color: Colors.yellow,
                  borderRadius:BorderRadius.circular(40)
                ),child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Enjoy  Flat 50% Off',style: GoogleFonts.macondo(fontSize: 30)),
                      Container(height:50,
                        width: 210,
                        decoration: BoxDecoration(border:Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10)
                        ),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Use this Code',style:GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700)),
                            Text('Q3WQQ',style:GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue))
                          ],
                        ),

                      )
                    ],
                  ),
              ),
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(color: Colors.pinkAccent,
                          borderRadius:BorderRadius.circular(40)
                      ),child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Enjoy  Flat 20% Off',style: GoogleFonts.macondo(fontSize: 30)),
                        Container(height:50,
                          width: 210,
                          decoration: BoxDecoration(border:Border.all(width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Use this Code',style:GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w700)),
                              Text('FDAW3',style:GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue))
                            ],
                          ),

                        )
                      ],
                    ),
                    )
                  ],
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16/19,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(seconds: 200),
                    autoPlayCurve: Curves.easeIn,
                    scrollDirection: Axis.horizontal,
                    enlargeCenterPage: true
                  )),

               const SizedBox(height: 20,),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('New cars',style:GoogleFonts.roboto(fontSize: 25),)
                      ,const SizedBox(width: 190,),
                      GestureDetector(child: const Text('View more',style: TextStyle(fontWeight: FontWeight.w100),),
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>const Allcarss()));
                      })
                    ]
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child:Column(
                  children: List.generate(recentcarlist.length, (index) => NewCarsmodel(newcar: recentcarlist[index],)),
                )




              ),









            ],
          ),
        )
      ),
    );
  }
}
