import 'package:flutter/material.dart';
import 'package:bmi_calc/screens/main_screen.dart';
import 'package:bmi_calc/screens/bmi.dart';
void main(){
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) =>  Home(),
        '/bmi' : (context) => bmicalc()
      },
      // home: Home()
      )
    );
}
// class Home extends StatelessWidget {
//   const Home({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     return MaterialApp(
      
//       home: Container(
//         child: Center(
//           child: ),
//       ),
//       darkTheme: ThemeData.dark(
        
//       ),
//     );
//   }
// }
// class MySlider extends StatefulWidget {
//   MySlider({Key? key}) : super(key: key);

//   @override
//   _MySliderState createState() => _MySliderState();
// }

// class _MySliderState extends State<MySlider> {
//   int _value=1;
//   // bool loaded = false;
//   double _currentSliderValue = 0;
 
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: SafeArea(
//          child: Center(
//            child: Container(
//         child: Column(
//             children: [
//               SizedBox(height: 50,),
//               Expanded(
//                 child: Slider(
//                             value: _currentSliderValue,
//                             min: 0,
//                             max: 100,
//                             divisions: 100,
//                             label: _currentSliderValue.round().toString(),
//                             onChanged: (double newValue) {
//                               setState(() {
//                                 _currentSliderValue = newValue;
//                               });
//                             },
//                             inactiveColor: Color(0xff44355B) ,
//                             activeColor: Color(0xffeca72c),
//                           ),
//               )
//             ],
//         ),
//            ),
//          ),
//       ),
//     );
//   }
// }