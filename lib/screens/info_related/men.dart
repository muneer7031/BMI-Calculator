import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class men extends StatelessWidget {
  const men({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                          text: '\nBeing overweight can lead to a host of health problems. If you are feeling sluggish or lacking energy, chances are that you have too much fat for your height and weight or comparatively less fat than what is recommended. Knowing what your BMI or body mass index is a good way to find out whether you are obese or underweight. Body mass index is thus basically an indicator of how much fat one’s body has depending on that person’s height and weight. The ideal BMI varies from person to person depending not only on height and weight but other factors too.\nBroadly speaking, irrespective of whether you are male or female, a BMI in the range of 18.5 to 24.9 is considered normal. Less than 18.5 is termed underweight. Over 24.9 to 30 considered overweight. Anything above 30 is categorised as obese. These figures apply across the board irrespective of ages as well. BMI is expressed in kg/m2. All you need here is common sense to know that if a person with a height of 4 feet has a BMI equal to that of a 6-feet individual, the shorter person’s BMI is clearly not ideal. Of late, there has been a consensus in the medical fraternity that the BMI cut off for Asian populations should be 23 since these populations have been found to be more vulnerable to diabetes. These indicates that there is no ideal BMI range for a gender category or even particularly for age ranges.\n\nThe ideal BMI chart for men\n\n',
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