import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hospital_mgt/Login/login.dart';


void main() => runApp(MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:5), (){
      //Navigator.pop(context);
      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                      
    } );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      getAssetImage(),
                      Text(
                        "Hospital Management System",
                        style: TextStyle(
                            fontSize: 20.0, 
                            fontWeight: FontWeight.bold
                            ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(backgroundColor: Colors.red,),
                    Padding(
                      padding: EdgeInsets.only(top:10.0),
                    ),
                    //Text("CodeWarriors")
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget getAssetImage() {
    AssetImage assetImage = AssetImage('images/heart.png');
    Image image = Image(
      image: assetImage,
      width: 100.0,
      height: 100.0,
    );
    return Container(child: image);
  }
}
