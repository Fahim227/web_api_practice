import 'package:flutter/material.dart';
import 'package:web_api_practice/Screens/contact_list.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Contacts(),
    },
  ));
}

