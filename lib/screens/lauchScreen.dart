import 'dart:async';
import 'package:flutter/material.dart';
import 'siginIn.dart';

//use hex colocr
class AppLaunch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LauchScreen();
  }
}

class LauchScreen extends StatefulWidget {
  @override
  _LauchScreenState createState() => _LauchScreenState();
}

class _LauchScreenState extends State<LauchScreen> {
  // after sometime call the  home screen
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Sigin())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // wojob logos come over here
        // then I will replace the
        //flutter logos by wojob logos
        color: Colors.white,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
