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
          body: Container(
            
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
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