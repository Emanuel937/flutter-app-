import 'package:flutter/material.dart';
import 'package:wojob/components/form.dart';
import 'package:wojob/screens/signUp.dart';
import '../models/home.dart';

class Sigin extends StatelessWidget {
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
            child: Text("S'identifier",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          InkWell(
              onTap: () => navigateTo(context, SignUp()),
              child: Row(
                children: [
                  Text("ou"),
                  Text("S'inscrire sur wojob"),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 10),
            child: textFormFieldEmail(),
          ),
          textFormFildPassword(),
          Container(
              margin: EdgeInsets.only(bottom: 15, top: 15),
              child: Text("Mot de passe oublié ?")),
          navigateBottonForm("S'identifier", context, AppHome()),
        ],
      ),
    ));
  }
}
