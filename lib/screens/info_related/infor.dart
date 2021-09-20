import 'package:flutter/material.dart';
class info extends StatelessWidget {
  const info({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        // color: Color(0xff031926),
        child: Scaffold(
          backgroundColor:  Color(0xff031926),
        ),
      ),
    );
  }
}