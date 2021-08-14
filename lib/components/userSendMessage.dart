import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

friendsList() {
  dynamic data = [
    'img',
    "GO",
    'name',
    "rabi",
    'img',
    "GO",
    'name',
    "rabi",
  ];
  return ListView.builder(
    itemCount: data.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
          padding: EdgeInsets.all(12),
          child: InkWell(
              onTap: () => Navigator.pushNamed(context, "/tchat"),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fjadopteunprojet.com%2Frejoignez-la-communaute%2Fview%2F8086&psig=AOvVaw2w7MQBdcOXherawJRvEn7L&ust=1628948135452000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIjXvPCOrvICFQAAAAAdAAAAABAJ"))))),
                  Expanded(
                      flex: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Text("Emanuel"), Text("last msg")]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("24/12"),
                                Icon(FontAwesomeIcons.solidCircle, size: 10)
                              ])
                        ],
                      ))
                ],
              )));
    },
  );
}
