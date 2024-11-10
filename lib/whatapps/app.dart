import 'package:flutter/material.dart';
import 'package:whatapp/whatapps/splashPage.dart';



void main(){
  runApp(App());
}

class App  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SplashPageW(),
    );
  }
}