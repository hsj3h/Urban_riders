import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/sedann/sedancarclass.dart';

import 'package:urban_riders/mainpages/homepage.dart';

import '../../components/homenavigationbar.dart';
import 'sedancarmodel.dart';

class SedanPage extends StatelessWidget {
  const SedanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false
      ,
      home: Scaffold(bottomNavigationBar: Homenavbar(),
          appBar: AppBar(elevation: 0,
            backgroundColor: Color(0xFF475269),leading: GestureDetector(child: Icon(Icons.arrow_back),
          onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }),

          )

        ,body:Column(
        children: List.generate(
        sedancarlist.length,
            (index) => SedanCarModelCard(
          carModel: sedancarlist[index],
        ),
      ),
    )

      ),

    );
  }
}


