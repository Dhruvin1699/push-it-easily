
import 'package:figmaappnew/presentation/screens/FogetPassword/pwcreate.dart';
import 'package:figmaappnew/presentation/screens/Loginscreen.dart';
import 'package:figmaappnew/presentation/screens/Onboardscreen2.dart';
import 'package:figmaappnew/presentation/screens/OtpScreen.dart';
import 'package:figmaappnew/presentation/screens/Signupscreen.dart';
import 'package:figmaappnew/presentation/screens/mainpages/dashboardscreen.dart';
import 'package:figmaappnew/presentation/screens/mainpages/productdetails.dart';
import 'package:figmaappnew/presentation/screens/mainpages/searchscreen.dart';
import 'package:figmaappnew/presentation/screens/onboardScreen3.dart';
import 'package:figmaappnew/presentation/screens/onboardscreen.dart';
import 'package:figmaappnew/presentation/screens/sample.dart';
import 'package:figmaappnew/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
