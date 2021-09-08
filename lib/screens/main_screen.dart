import 'package:bmi_calc/widgets/class.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/MySlider.dart';
import 'package:bmi_calc/widgets/agebar.dart';
class Home extends StatelessWidget {
   Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      
      home: SafeArea(
        child: Column(
          children:[ 
            SizedBox(height: 100,),
            Container(
              child: MySlider()
              ),
            SizedBox(height: 100,),
            Container(
              child: age()
              ),
            SizedBox(height: 100,),

            ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () { 
                  Navigator.pushNamed(context, '/bmi');
              },
                child: Text('CALCULATE BMI'),
            )
              ],
          ),
      ),
    );
  }
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Color(0xffB8DBD9),
  primary: Color(0xff2F4550),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

}
