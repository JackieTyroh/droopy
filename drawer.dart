import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
          Container(
            height: 210,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Color(0xff1E223F),
            child: Center(
              child: Column(
                children: <Widget>[
                new Padding(padding: EdgeInsets.only(top: 50.0)),
                Row(children: <Widget>[
                  CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/app2.png'),
                  minRadius: 30,
                  maxRadius: 32,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text(' brayson',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    Text('@Institute of Finance Management',style: TextStyle(color: Colors.white,fontSize: 15,),)
                  ],)
                ],),
                SizedBox(height: 60,),
                ListTile(
                  leading: IconButton(icon: Icon(Icons.add_to_home_screen,size: 40,color: Colors.white,), onPressed: (){}),
                  title: Text('Home',style: TextStyle(fontSize: 20,color: Colors.white),),),
                ListTile(
                  leading: IconButton(icon: Icon(Icons.note,size: 40,color: Colors.white), onPressed: (){}),
                  title: Text('Notes Library',style: TextStyle(fontSize: 20,color: Colors.white),),),
                ListTile(
                  leading: IconButton(icon: Icon(Icons.home,size: 40,color: Colors.white), onPressed: (){}),
                  title: Text('Free Venues',style: TextStyle(fontSize: 20,color: Colors.white),),),
                ListTile(
                  leading: IconButton(icon: Icon(Icons.shopping_cart,size: 40,color: Colors.white), onPressed: (){}),
                  title: Text('Online Shop',style: TextStyle(fontSize: 20,color: Colors.white),),),
                ListTile(
                  leading: IconButton(icon: Icon(Icons.info_outline,size: 40,color: Colors.white), onPressed: (){}),
                  title: Text('University Infos',style: TextStyle(fontSize: 20,color: Colors.white),),),
                ListTile(
                  leading: IconButton(icon: Icon(Icons.note_add,size: 40,color: Colors.white), onPressed: (){}),
                  title: Text('Create short notes',style: TextStyle(fontSize: 20,color: Colors.white),),),
                ListTile(
                  leading: IconButton(icon: Icon(Icons.settings,size: 40,color: Colors.white), onPressed: (){}),
                  title: Text('Settings',style: TextStyle(fontSize: 20,color: Colors.white),),),
                ListTile(
                  leading: IconButton(icon: Icon(Icons.info,size: 40,color: Colors.white), onPressed: (){}),
                  title: Text('About Droopy',style: TextStyle(fontSize: 20,color: Colors.white),),),
                ],
              ),
            ),
          ),
    );
  }
}