import 'package:flutter/material.dart';
class MySlider extends StatefulWidget {
  MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  // int _value=1;
  // bool loaded = false;
  double _currentSliderValue = 50;
 
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      color: Colors.black54,
      child: SafeArea(
         child: Padding(
        // child: Expanded(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children:[
              Text("YOUR AGE IS : ${_currentSliderValue.toInt()} ",
              style: TextStyle(
                color: Color(0xff124559),
                fontSize: 35.0,
                fontWeight: FontWeight.bold
              ),
              ),
              Slider(
                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double newValue) {
                          setState(() {
                            _currentSliderValue = newValue;
                          });
                        },
                        inactiveColor: Color(0xff44355B) ,
                        activeColor: Color(0xffeca72c),
                      ),
            ] 
          ),
        // ),
         ),
      ),
    );
  }
}