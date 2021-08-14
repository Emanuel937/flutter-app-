import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wojob/themes/theme.dart';

class Tchat extends StatefulWidget {
  @override
  _TchatState createState() => _TchatState();
}

class _TchatState extends State<Tchat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: appBarBackground(),
          title: Transform(
              transform: Matrix4.translationValues(36, 0.0, 0.0),
              child: Container(
                  margin: EdgeInsets.only(left: 3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "name",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Recrutor",
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      )
                    ],
                  ))),
          leading: Row(
            children: [
              IconButton(
                  iconSize: 10,
                  onPressed: () {
                    Navigator.pop(context);
                    print("hello");
                  },
                  icon: Icon(FontAwesomeIcons.chevronLeft)),
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:
                      CircleAvatar(backgroundImage: AssetImage("avatar.jpeg")))
            ],
          ),
          actions: [
            IconButton(
                iconSize: 20,
                onPressed: () {
                  print("hello video");
                },
                icon: Icon(FontAwesomeIcons.video)),
            IconButton(
                onPressed: () {
                  print("hello video call phone");
                },
                icon: Icon(FontAwesomeIcons.mobile)),
          ],
        ),
        body: Container(
            child: Column(children: [
          Flexible(
            child: Container(child: Text("this is the chat content")),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              color: Colors.blue[300],
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: IconButton(
                      onPressed: () => null,
                      icon: Icon(FontAwesomeIcons.plusSquare)),
                ),
                Expanded(
                    flex: 9,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(
                            top: 15, bottom: 10, left: 5, right: 5),
                      ),
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                    )),
                Expanded(
                  flex: 2,
                  child: IconButton(
                      onPressed: () => null,
                      icon: Icon(FontAwesomeIcons.microphone)),
                ),
              ]),
            ),
          )
        ])));
  }
}
