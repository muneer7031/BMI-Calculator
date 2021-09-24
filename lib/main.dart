import 'package:flutter/material.dart';
import 'package:bmi_calc/screens/main_screen.dart';
import 'package:bmi_calc/screens/bmi.dart';
import 'package:bmi_calc/screens/info_related/infor.dart';
import 'package:bmi_calc/screens/info_related/men.dart';
import 'package:bmi_calc/screens/info_related/wom.dart';
void main(){
  runApp(
    MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  Home(),
        '/bmi' : (context) => bmicalc(),
        '/info':(context)=>info(),
        '/men':(context)=>men(),
        '/wom':(context)=>wom(),
      },
      // home: Home()
      )
    );
}
