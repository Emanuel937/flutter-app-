// this file only contain all the router use on this app
import 'package:flutter/material.dart';
import 'package:wojob/screens/lauchScreen.dart';
import 'package:wojob/screens/tchat-type.dart';

appRooter() {
  //this is just a test of rooter
  dynamic setRoot = {"/tchat": (context) => Tchat()};
  return MaterialApp(
    routes: setRoot,
    title: "Wojob",
    home: AppLaunch(),
  );
}
