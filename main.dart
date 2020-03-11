import 'package:droopy/AuthPages/create.dart';
import 'package:droopy/AuthPages/forgot.dart';
import 'package:droopy/AuthPages/reset.dart';
import 'package:flutter/material.dart';

import 'AuthPages/login.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch:Colors.blue,
      ),
      home: CreateP(),
    );
  }
}
