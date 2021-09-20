import 'package:flutter/material.dart';
import 'package:bmi_calc/screens/main_screen.dart';
import 'package:bmi_calc/screens/bmi.dart';
import 'package:bmi_calc/screens/info_related/infor.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  Home(),
        '/bmi' : (context) => bmicalc(),
        '/info':(context)=>info(),
      },
      // home: Home()
      )
    );
}
