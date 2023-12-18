import 'package:flutter/material.dart';
import 'package:urban_riders/mainpages/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../firebase_options.dart';
class RegisterPage extends StatefulWidget {


  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var email=TextEditingController();
  var password=TextEditingController();
  String errormsg='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            // gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomLeft
            //     , colors: [Colors.redAccent,Colors.yellowAccent]
            // )
        ),
        child: Scaffold(
          backgroundColor: Color(0xFF475269),
          body: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  // Text("Welcome",
                  //   style: TextStyle(
                  //       fontSize: 40,fontWeight: FontWeight.bold
                  //   ),
                  // ),
                ],
              ),
              // Row(
              //   children:
              //   [
              //     Text("Enter your account",style: TextStyle(color: Colors.black45,fontSize: 20),),
              //   ],
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),

                  boxShadow: [
                    BoxShadow(blurRadius: 15,
                        offset: Offset(1, 1),
                        color: Colors.grey)
                  ],

                ),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Email",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))
                  ),
                ),
              ),
              SizedBox(
                height: 20,

              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),

                  boxShadow: [
                    BoxShadow(blurRadius: 15,
                        offset: Offset(1, 1),
                        color: Colors.grey)
                  ],

                ),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      hintText: "Password",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(errormsg,style: TextStyle(color: Colors.red,fontSize: 20 ),),

              SizedBox(
                height: 60,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(boxShadow:
                  [
                    BoxShadow(blurRadius: 5,
                        offset: Offset(1, 1),
                        color: Colors.grey)
                  ],
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(39),
                    // gradient: LinearGradient(
                    //   begin: Alignment.topRight,
                    //   end: Alignment.centerLeft
                    //   , colors: [Colors.redAccent,Colors.yellowAccent],
                    //
                    // ),

                  ),
                  child: Center(child: Text("Sign up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)),
                ),onTap: ()  {
                  var auth= FirebaseAuth.instance;
                  auth.createUserWithEmailAndPassword(email: email.text, password: password.text).catchError( (error){
                   setState(() {
                     errormsg=error.toString().substring(40);
                   });
                  });

                  print("email+${email.text}");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));

              },
              ),

              SizedBox(height: 50,),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(child: Text("Have an account?",style: TextStyle(color: Colors.black45,fontSize: 15),)
                    ,onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));

        },),

                    ],
                  )
                ],
              )
            ],

          ),



        ),
      ),
    );
  }
}
