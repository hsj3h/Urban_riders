import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/mpv/mpvcarclass.dart';
import 'package:urban_riders/cardetailists/sedann/sedancarclass.dart';

import 'package:urban_riders/mainpages/homepage.dart';

import '../../components/homenavigationbar.dart';
import 'mpvcarmodel.dart';


class MpvPages extends StatelessWidget {
  const MpvPages({super.key});

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
              mpvcarlist.length,
                  (index) =>MpvCarModel(mpvcar: mpvcarlist[index],),
            ),
          )

      ),

    );
  }
}


