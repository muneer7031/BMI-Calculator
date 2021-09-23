import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class info extends StatelessWidget {
  const info({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          backgroundColor:  Color(0xff031926),
          appBar: AppBar(
            title: Text("What is BMI Calculator?",
                        style: GoogleFonts.architectsDaughter(
                                    textStyle: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                    )
                                  )),
          ),
          body: Padding(
            padding:EdgeInsets.only(left:10.0,top: 5,right: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'What is BMI \n',
                      spellOut: true,
                      style: GoogleFonts.architectsDaughter(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ),
                    TextSpan(
                      text: 'BMI ',
                      spellOut: true,
                      style: GoogleFonts.architectsDaughter(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ),
                    TextSpan(
                      text: '(Body Mass Index) is a number calculated from a person\'s weight and height. BMI is a fairly reliable indicator of body fatness for most people. Additionally, BMI is an inexpensive and easy-to-perform method of screening for weight categories that may lead to health problems.',
                      style:GoogleFonts.shadowsIntoLight(
                        textStyle: TextStyle(
                        wordSpacing: 7,
                        letterSpacing: 1,
                        fontSize: 20
                      )
                      )
                    ),
                    TextSpan(
                      text: '\nBMI Calculator: ',
                      spellOut: true,
                      style: GoogleFonts.architectsDaughter(
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ),
                    TextSpan(
                      text: "\n A BMI calculator is an online or offline device which measures your body mass index. The body mass index or BMI is a measure of how much body mass you have in relation to your height and weight. \nBody mass refers not only to the fat within your body but also within muscles and bones. It is calculated by taking your weight and dividing it by the square of your height. The BMI figures let you know whether you are within normal weight range, or if you are underweight or overweight.\nBoth high BMIs and low ones are known to raise a host of health problems, especially as you age. However, a high BMI in itself is not always, medically speaking, a cause for alarm. It should be viewed in conjunction with other health parameters.",
                      spellOut: true,
                      style: GoogleFonts.shadowsIntoLight(
                        textStyle: TextStyle(
                          fontSize: 20,
                        )
                      )
                    ),
                  ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}