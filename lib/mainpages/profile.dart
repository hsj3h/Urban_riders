import 'package:flutter/material.dart';
import 'package:urban_riders/components/homenavigationbar.dart';
import 'package:urban_riders/mainpages/homepage.dart';
class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF475269),leading: GestureDetector(child: Icon(Icons.arrow_back),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }
            ,),

          ),
        bottomNavigationBar: Homenavbar(),

      ),
    );
  }
}
