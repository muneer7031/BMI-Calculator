import 'package:flutter/material.dart';
import 'package:bmi_calc/screens/main_screen.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class bmicalc extends StatelessWidget {
  const bmicalc({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          title: Text('data'),
        ) ,
        body: SfRadialGauge(
          enableLoadingAnimation: true,
          animationDuration: 4500,
          backgroundColor: Color(0xff18314f),
          
          axes: [
            RadialAxis(
              // ranges: [
              //   GaugeRange(startValue: 0, endValue: 25,startWidth: 5,endWidth: 20, gradient: SweepGradient(colors: <Color>[Color(0xFFBC4E9C), Color(0xFFF80759)],
              //             stops: <double>[0.25, 0.75]),)
              // ],
              minimum: 0,
              maximum: 50,
              axisLabelStyle: GaugeTextStyle(
            color: Color(0xff8BBEB2), 
            fontSize: 15, 
             fontStyle:FontStyle.italic,
             fontWeight: FontWeight.bold, fontFamily: 'Times') ,
              annotations: [
                GaugeAnnotation(
                  widget: Text('50',
                  style: TextStyle(
                    color:Color(0xffB10F2E),
                    fontSize: 25, 
             fontStyle:FontStyle.normal,
             fontWeight: FontWeight.bold, fontFamily: 'Times'
                  ),
                  ),
                  angle: 90,
                )
              ],
              pointers: [
                RangePointer(
                  enableAnimation: true,
                  value: 25,
                  color: Color(0xff006494),//alternate
                  

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}