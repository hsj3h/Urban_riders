import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:urban_riders/firebase_options.dart';

import 'package:urban_riders/mainpages/loginpage.dart';
import 'package:urban_riders/cardetailists/sedann/sedan.dart';
import 'package:urban_riders/mainpages/splashscreen.dart';
import 'package:urban_riders/components/datepicker.dart';
import 'package:urban_riders/wroksheet.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );





//
// void main(){
//   ///////
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}


