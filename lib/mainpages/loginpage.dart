import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:urban_riders/mainpages/homepage.dart';
import 'package:urban_riders/mainpages/registerpage.dart';
class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  var email=TextEditingController();
  var password=TextEditingController();
  String errormsg='';
  get error =>null;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
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
                  Text("Welcome",
                      style: TextStyle(
                        fontSize: 40,fontWeight: FontWeight.bold
                      ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Sign into your account",style: TextStyle(color: Colors.black45,fontSize: 20),),
                ],
              ),
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
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(child: Text("Forgot your Password ?",style: TextStyle(color: Colors.black45,fontSize: 15),),
                    onTap: (){},
                  ),
                ],
              ),SizedBox(
                height: 60,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(boxShadow:
                  [
                    BoxShadow(blurRadius:1,
                    offset: Offset(1, 1),
                    color: Colors.grey)
                  ],
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(39),
                    // gradient: LinearGradient(
                    //     begin: Alignment.topRight,
                    //     end: Alignment.centerLeft
                    //     , colors: [Colors.redAccent,Colors.yellowAccent],
                    //
                    // ),

                ),
                child: GestureDetector(child: Center(child: Text("Sign in",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)),
                onTap:() async {


                 print(email.text);
                 var auth=FirebaseAuth.instance;
                 var loginstatus=await auth.signInWithEmailAndPassword(email:email.text, password: password.text).catchError( (error){});

                   if(
                   auth.currentUser?.uid!=null
                   ){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                   }else{
                     setState(() {
                       errormsg=error.toString().substring(30);
                     });
                   }
                   auth.signOut();





                  //
                },),
              ),SizedBox(height: 50,),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(color: Colors.black45,fontSize: 15),),
                      GestureDetector(child:
                      Text("Create",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
                        onTap: (){




                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));

                        },
                      ),
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
