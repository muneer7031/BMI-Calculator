import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class wom extends StatelessWidget {
  const wom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Material(
        child: Scaffold(
          backgroundColor:  Color(0xff031926),
          appBar: AppBar(
            title: Text("Ideal BMI for Men?",
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
              child: Column(
                children: [
                  RichText(
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
                          text: '\nAsking whether there is an ideal BMI for women is the same as asking whether there is an ideal BMI for men. There is no ideal range of BMI for a class of adult males any more than there is for adult females. Since BMI is a function of height and weight in relation to each other, what gender you belong to has little significance. BMI or body mass index is merely an indicator of how much fat you have in a certain amount of height. The BMI values of 18.5 to 24.9 as normal, less than 18.5 underweight, 25 to 29 overweight and above 29 as obese apply equally to men as well as women. A woman have a BMI of 35 is exposed to the same health risks as a man having a similar BMI.\nWomen in general are said to have a higher percentage of body fat than men. This does not mean that there is a separate normal BMI value for men and women. This is also why women require less calories per unit of body weight as compared to men. Studies have shown that on average, men have slightly higher BMI values than women. But this difference increases with age as women tend to put on more weight as they grow older. Higher BMI cut offs for women like 30, 32 and 33 are considered normal by some studies. But it’s best to follow the consensus on what’s normal for both men and women.\nThe ideal BMI chart for women\n\n',
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
                    Container(
                        width: 300.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image:  AssetImage('images/ideal_men.jpeg')
                          )
                      )),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}