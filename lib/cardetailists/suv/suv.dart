import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/sedann/sedancarclass.dart';
import 'package:urban_riders/cardetailists/suv/suvCarClass.dart';
import 'package:urban_riders/cardetailists/suv/suvCard.dart';
// import 'package:urban_riders/cardetailists/suvcarmodelsfunction.dart';
// import 'package:urban_riders/pages/sedancarmodel.dart';
import 'package:urban_riders/mainpages/homepage.dart';

import '../../components/homenavigationbar.dart';

class SuvPage extends StatefulWidget {
  const SuvPage({super.key});

  @override
  State<SuvPage> createState() => _SuvPageState();
}

class _SuvPageState extends State<SuvPage> {

  List<Map<dynamic,String>>sedan=[


    {
      'name':'Land Cruiser',
      'price':'18900',
      'img':'assets/car/landcruiserlandcruiserrightfrontthreequarter.png'
    },
    {
      'name':'Lamborgini Urus',
      'price':'89000',
      'img':'assets/car/urusperformanteurusperformanterightfrontthreequarter.png'
    },



  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false
      ,
      home: Scaffold(bottomNavigationBar: Homenavbar(),
          appBar: AppBar(
            backgroundColor: Color(0xFF475269),leading: GestureDetector(child: Icon(Icons.arrow_back),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }
            ,),

          )

          ,body:Column(
            children:
              List.generate(suvcarlists.length,
                      (index) =>SuvCard(
                          suv: suvcarlists[index]))
            ,
          )

      ),

    );
  }
}

