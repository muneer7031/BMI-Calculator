import 'package:flutter/material.dart';
class menu extends StatelessWidget {
  const menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Color(0xffF7F7FF), fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Color(0xff031926),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/img.png'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Check my BMI',
            style: TextStyle(color: Color(0xff031926),
             ),
            
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('What is BMI Calculator?',
            style: TextStyle(color: Color(0xff031926),
             ),),
            onTap: () => {Navigator.pushNamed(context, '/info')},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings',
            style: TextStyle(color: Color(0xff031926),
             ),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback',
            style: TextStyle(color: Color(0xff031926),
             ),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout',
            style: TextStyle(color: Color(0xff031926),
             ),),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}