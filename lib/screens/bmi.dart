
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bmi_calc/widgets/global_var.dart';
import 'package:flutter/material.dart';
// import 'package:bmi_calc/screens/main_screen.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class bmicalc extends StatelessWidget {
   bmicalc({ Key? key }) : super(key: key);
  double bmival=CalcBmi();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        // backgroundColor: Color(0xff1d3557),
        appBar:AppBar(
          backgroundColor:Color(0xff1d3557),
          centerTitle: true,
          elevation:0,
          title: Text('Your BMI',
           style: TextStyle(
             color: Color(0xffd5c6e0),
             fontStyle: FontStyle.italic,
              shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.blue,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
           ),
          ),
        ) ,
        body: Container(
           color: Color(0xff1d3557),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            
            children: [
              Spacer(),
              SfRadialGauge(
                enableLoadingAnimation: true,
                animationDuration: 4500,
                backgroundColor: Color(0xff1d3557),
                
                axes: [
                  RadialAxis(
                    ranges: [
              
                      GaugeRange(startValue:5,endValue: 18.5,color: Color(0xff00bbf9),startWidth: 10,endWidth: 10),
                      GaugeRange(startValue: 18.5,endValue: 25.5,color: Color(0xff38b000),startWidth: 10,endWidth: 10),
                      GaugeRange(startValue: 25.5,endValue: 29.9,color: Color(0xfff77f00),startWidth: 10,endWidth: 10),
                      // GaugeRange(startValue: 25.5,endValue: 29.9,color: Color(0xfff64740),startWidth: 10,endWidth: 10),
                      GaugeRange(startValue: 29.9,endValue: 40,color: Color(0xffd62828),startWidth: 10,endWidth: 10),
                  
              
                ],
                    
                    
                    useRangeColorForAxis: true,
                    minimum: 10,
                    maximum: 40,
                    axisLabelStyle: GaugeTextStyle(
                  color: Color(0xff8BBEB2), 
                  fontSize: 15, 
                   fontStyle:FontStyle.italic,
                   fontWeight: FontWeight.bold, fontFamily: 'Times') ,
                    annotations: [
                      GaugeAnnotation(
                        widget: Text('${(bmival.toStringAsFixed(4))}',
                        style: TextStyle(
                          color:myColor(),
                          fontSize: 25, 
                   fontStyle:FontStyle.normal,
                   fontWeight: FontWeight.bold, fontFamily: 'Times'
                        ),
                        ),
                        angle: 90,
                      )
                    ],
                    pointers: [
                      MarkerPointer(
                        enableAnimation: true,
                        value: bmival,
                        color: Color(0xff291f1e),//alternate
                        

                      )
                    ],
                  )
                ],
              ),
              Spacer(),
                Flexible(
                  fit: FlexFit.tight,
                  child: DefaultTextStyle(
                        style: const TextStyle(
                          color: Color(0xffb8dbd9),
                          fontSize: 30.0,
                          fontFamily: 'Agne',
                        ),
                        child: Container(
                          width:350,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(txt(),
                              speed:Duration(milliseconds: 99)
                              ),
                              
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
  String txt(){
    if(bmival>=18.5 && bmival<=25.5)
      return 'Your bmi is normal. You are healthy!';
    else if(bmival>25.5 && bmival<=29.9)
      return 'You are slightly overweight. Refer home page for tips!';
    else if(bmival>29.9)
      return 'You are obese. Refer home page for tips!';
    else
      return 'You are underweight. Refer home page for tips!';
  }
  Color myColor(){
    if(bmival>=18.5 && bmival<=25.5)
      return Color(0xff38b000);
    else if(bmival>25.5 && bmival<=29.9)
      return Color(0xfff77f00);
    else if(bmival>29.9)
      return Color(0xffd62828);
    else
      return Color(0xff00bbf9);
  }
}