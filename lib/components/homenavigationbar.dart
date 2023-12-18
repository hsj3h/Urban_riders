import 'package:flutter/material.dart';
import 'package:urban_riders/mainpages/homepage.dart';
import 'package:urban_riders/mainpages/profile.dart';
class Homenavbar extends StatelessWidget {
  const Homenavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF475269),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25)
        )
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.favorite,
          color: Colors.white,
          size: 32,),
          GestureDetector(
            child: Icon(Icons.home,
              color: Colors.white,
              size: 32,),onTap:
          (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          ),
          GestureDetector(
            child: Icon(Icons.person,
              color: Colors.white,
              size: 32,),onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));
          },
          )


        ],
      ),
    );
  }
}
