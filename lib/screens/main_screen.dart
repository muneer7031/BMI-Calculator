import 'package:bmi_calc/widgets/gender.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/widgets/MySlider.dart';
import 'package:bmi_calc/widgets/agebar.dart';
// import 'package:bmi_calc/screens/menu.dart';q
// import 'images';
class Home extends StatelessWidget {
   Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(
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
            onTap: ()  {Navigator.pushNamed(context, '/info');},
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
    ),
          backgroundColor:Colors.black45, 
          appBar: AppBar(
            backgroundColor: Colors.black45,
            
            leading:  Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () { Scaffold.of(context).openDrawer(); },
                          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        );
                      },
                    ),
          ),
          body: Column(
            children:[ 
              // SizedBox(height: 100,),
              gender(),
              SizedBox(height: 50,),
              Container(
                child: MySlider()
                ),
              SizedBox(height: 50,),
              Container(
                child: age()
                ),
              SizedBox(height: 70,),

              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () { 
                    Navigator.pushNamed(context, '/bmi');
                },
                  child: Text('CALCULATE BMI'),
              )
                ],
            ),
        ),
      ),
    );
  }
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Color(0xffB8DBD9),
  primary: Color(0xff2F4550),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

}
