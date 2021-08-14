import 'package:flutter/material.dart';
import 'package:wojob/components/form.dart';
import 'package:wojob/screens/siginIn.dart';
import '../models/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(top: 30), child: Text("WOjob")),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 5),
            child: Text("S'inscrire",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          InkWell(
              onTap: () => navigateTo(context, Sigin()),
              child: Row(
                children: [
                  Text("ou"),
                  Text("Se connecter sur wojob"),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 10),
            child: textFormFieldEmail(),
          ),
          textFormFildPassword(),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                          top: 15, bottom: 10, left: 5, right: 5),
                      icon: const Icon(FontAwesomeIcons.mobile, size: 20),
                      hintText: "Type your number phone",
                      labelText: "Phone",
                      border: OutlineInputBorder()))),
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurple[900],
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          navigateBottonForm("S'inscrire", context, AppHome()),
        ],
      ),
    ));
  }
}
