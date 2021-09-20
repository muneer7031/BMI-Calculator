import 'package:bmi_calc/widgets/class.dart'; 
// import 'package:flutter/material.dart';

myBmi bmi=myBmi(height:160,weight: 60.0);
double CalcBmi()
{
  double ht = bmi.height.toDouble();
  double wt = bmi.weight.toDouble();
  double bmiop= wt/(ht*ht*0.0001);
  return bmiop;
}