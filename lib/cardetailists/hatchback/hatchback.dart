import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/hatchback/hatchbackclass.dart';
import 'package:urban_riders/cardetailists/sedann/sedancarclass.dart';
import 'package:urban_riders/cardetailists/suv/suvCarClass.dart';
import 'package:urban_riders/cardetailists/suv/suvCard.dart';
// import 'package:urban_riders/cardetailists/suvcarmodelsfunction.dart';
// import 'package:urban_riders/pages/sedancarmodel.dart';
import 'package:urban_riders/mainpages/homepage.dart';

import '../../components/homenavigationbar.dart';
import 'hatchbackmodel.dart';

class Hatchback extends StatefulWidget {
  const Hatchback({super.key});

  @override
  State<Hatchback> createState() => _HatchbackState();
}

class _HatchbackState extends State<Hatchback> {



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
            List.generate(hatchbackcarlist.length,
                    (index) =>HatchBackClss(hatchback: hatchbackcarlist[index],)
            )
            ,
          )

      ),

    );
  }
}

