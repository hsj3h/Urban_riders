import 'package:flutter/material.dart';
import 'package:urban_riders/cardetailists/allcarslist/allcarsclass.dart';
import 'package:urban_riders/mainpages/homepage.dart';
import '../../components/homenavigationbar.dart';
import 'allcarsmodel.dart';


class Allcarss extends StatefulWidget {
  const Allcarss({super.key});

  @override
  State<Allcarss> createState() => _AllcarssState();
}

class _AllcarssState extends State<Allcarss> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false
      ,
      home: Scaffold(bottomNavigationBar: const Homenavbar(),
          appBar: AppBar(
            backgroundColor: const Color(0xFF475269),leading: GestureDetector(child: Icon(Icons.arrow_back),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
            }
            ,),

          )

          ,body:SingleChildScrollView(
            child: Column(
              children:
              List.generate(allcarlist.length,
                      (index) =>AllCarsModel(allcars:allcarlist[index])
              )

            ),
          )

      ),

    );
  }
}

