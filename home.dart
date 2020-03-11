import 'package:droopy/drawer.dart';
import 'package:flutter/material.dart';

class HomePg extends StatefulWidget {
  @override
  _HomePgState createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MainDrawer(),

    );
  }
}