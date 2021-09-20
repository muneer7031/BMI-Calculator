import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/global_var.dart';
class age extends StatefulWidget {
  const age({ Key? key }) : super(key: key);

  @override
  _ageState createState() => _ageState();
}

class _ageState extends State<age> {
 
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Card(
              color: Color(0xff0D3B66),
              elevation: 5.0,
              shadowColor: Colors.black54,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text('HEIGHT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff70A288),
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ListTile(
                    leading: InkWell(
                      onTap: (){
                        setState(() {
                          bmi.height = bmi.height-1;
                        });
                      },
                      child: Icon(
                        
                        Icons.remove,
                        size:45.0,
                        color: Colors.deepOrange,
                        ),
                    ),
                    trailing: InkWell(
                      onTap: (){
                        setState(() {
                          bmi.height = bmi.height+1;
                        });
                      },
                      child: Icon(
                        Icons.add,
                         size:45.0,
                        color: Colors.deepOrange,
                        ),
                    ),
                    title: Text(
                      " ${bmi.height} CM",
                      style: TextStyle(
                fontSize: 20
              ),
                      textAlign: TextAlign.center
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
         Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Card(
              color: Color(0xff0D3B66),
              elevation: 5.0,
              shadowColor: Colors.black54,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text('WEIGHT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff70A288),
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  ListTile(
                    leading: InkWell(
                      onTap: (){
                        setState(() {
                          bmi.weight = bmi.weight-1;
                        });
                      },
                      child: Icon(
                        
                        Icons.remove,
                        size:45.0,
                        color: Colors.deepOrange,
                        ),
                    ),
                    trailing: InkWell(
                      onTap: (){
                        setState(() {
                          bmi.weight = bmi.weight+1;
                        });
                      },
                      child: Icon(
                        Icons.add,
                         size:45.0,
                        color: Colors.deepOrange,
                        ),
                    ),
                    title: Text(
                      " ${bmi.weight.toInt()} KG",
                      style: TextStyle(
                fontSize: 20
              ),
                      textAlign: TextAlign.center
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
    
  }
}