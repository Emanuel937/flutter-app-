import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

textFormFieldEmail() {
  return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          isDense: true,
          contentPadding:
              EdgeInsets.only(top: 15, bottom: 10, left: 5, right: 5),
          icon: const Icon(FontAwesomeIcons.user, size: 20),
          hintText: "Type your e-mail",
          labelText: "Email",
          border: OutlineInputBorder()));
}

textFormFildPassword() {
  return TextFormField(
      decoration: const InputDecoration(
          isDense: true,
          contentPadding:
              EdgeInsets.only(top: 15, bottom: 10, left: 5, right: 5),
          icon: const Icon(FontAwesomeIcons.lock, size: 20),
          border: OutlineInputBorder(),
          hintText: "Type your password",
          labelText: "Password"),
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false);
}

navigateBottonForm(titleOfForm, context, nextPage) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity,
            40), // double.infinity is the width and 30 is the height
      ),
      child: Text(titleOfForm),
      onPressed: () => {navigateTo(context, nextPage)});
}

navigateTo(context, nextPage) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => nextPage));
}
