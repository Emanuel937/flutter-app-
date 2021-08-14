import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:wojob/components/userSendMessage.dart';
import 'package:wojob/themes/theme.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  // set the content of the tab navigation
  static List navContent = [
    Text("this the message"),
    Container(color: Colors.blue[30], child: friendsList()),
    Text("this is profil"),
  ];
  // the first context index
  int selectedIndex = 0;
  // appbar title
  String appBarTitle = "home";

  // update the selectIndex
  // this function will change the corrent index
  // every time the user click on tab icon

  void changecurrentIndex(int index) {
    setState(() {
      selectedIndex = index;
      // change the current app bar titble
      // if the corrent index is 0 then the appbar title
      // wiill be "home"
      switch (index) {
        case 0:
          appBarTitle = "home";
          break;
        case 1:
          appBarTitle = "Friends";
          break;
        case 2:
          appBarTitle = "Profil";
          break;
      }
    });
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [
          IconButton(
              onPressed: () => print("hello"),
              icon: Icon(FontAwesomeIcons.plus)),
        ],
        backgroundColor: appBarBackground(),
      ),
      body: Container(child: navContent[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), label: "HOME"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: "Me")
        ],
        currentIndex: selectedIndex,
        iconSize: 20,
        elevation: 5,
        onTap: changecurrentIndex,
      ),
    );
  }
}
