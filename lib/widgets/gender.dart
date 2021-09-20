
import 'package:flutter/material.dart';
class gender extends StatefulWidget {
  const gender({ Key? key }) : super(key: key);

  @override
  _genderState createState() => _genderState();
}

class _genderState extends State<gender> {
 double _heightm=150,_heightw=150,_widthm=150,_widthw=150;
 bool isMen=false,isWom=false,isMenen=false,isWomen=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black45,
      child: Row(
        children: [
          SizedBox(width: 20,),
          Expanded(
            child: InkWell(
              child: Container(child: Image.asset('images/men.png'),
              height: _heightm,width: _widthm,),
              onTap:(){
                setState(() {
                  if (isMen==false) {
                  _widthm+=10;
                  _heightm+=10;
                 
                  isMen=true;
                }else{
                  _widthm-=10;
                  _heightm-=10;
                  isMen=false;
                }
                });
              } ,
            ),
          ),
          SizedBox(width: 40,),
          Expanded(
            child: InkWell(
              child: Container(child: Image.asset('images/wom.png'),
              height: _heightw,width: _widthw,),
              onTap:(){
                setState(() {
                  if (isWom==false) {
                  _widthw+=10;
                  _heightw+=10;
                
                  isWom=true;
                }else{
                  _widthw-=10;
                  _heightw-=10;
                  isWom=false;
                }
                });
              } ,
            ),
          ),
            ],
      ),
    );
  }
}