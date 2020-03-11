import "package:flutter/material.dart";
import 'package:flutter/animation.dart';
class WelcomePage extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}class _WelcomeState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  int textColor=0xff1E223F;
  int fieldColor=0xff51556E;
  AnimationController _controller;
  Animation _animation;  
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    _animation = Tween(begin: -1.0, end: 0.0).animate(_controller);
      // ..addStatusListener((state) {
      //   if (state == AnimationStatus.completed) {
      //     print("completed");
      //   } else if (state == AnimationStatus.dismissed) {
      //     print("dismissed");
      //   }
      // })
      // ..addListener(() {
      //   print("value:${_animation.value}");
      //   setState(() {});
      // });
    _controller.forward();
  }  
  @override
  Widget build(BuildContext context) {
        final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(animation: _controller,
    builder: (BuildContext context ,Widget child){
      return Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          actions: <Widget>[
            BackButtonIcon(),
            // Back Button
          ],
          backgroundColor: Colors.transparent,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff1E223F),
        body: Transform(transform: Matrix4.translationValues(_animation.value *width, 0.0, 0.0),
        child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                            CircleAvatar(
                            backgroundImage: ExactAssetImage('assets/app1.jpg'),
                            minRadius: 70,
                            maxRadius: 80,
                          ),
                          Container(
                            color: Colors.transparent,
                            width: 350,
                            child: Column(
                              children: <Widget>[
                                new Padding(padding: EdgeInsets.only(top: 20.0)),
                          Text('Welcome back on \n          Droopy!',
                           style: TextStyle(color: Colors.white, fontSize: 25.0),),
                           new Padding(padding: EdgeInsets.only(top: 30.0)),
                           new TextFormField(
                          enableSuggestions: true,
                          decoration: new InputDecoration(
                            hintText: 'Email',
                            hintStyle: new TextStyle(color: Colors.white,fontSize: 25),
                            filled: true,
                            fillColor: Colors.grey,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(
                                color: Color(0xff51556E)
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        
                           new Padding(padding: EdgeInsets.only(top: 20.0)),
                           new TextFormField(
                          enableSuggestions: true,
                          decoration: new InputDecoration(
                            hintText: 'Password',
                            hintStyle: new TextStyle(color: Colors.white,fontSize: 25),
                            filled: true,
                            fillColor: Colors.grey,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(color:Colors.grey
                              ),
                            ),
                            ),
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,),
                          new Padding(padding: EdgeInsets.only(top: 25.0)),
                          Container(
                            margin: const EdgeInsets.only(left:165),
                            child: FlatButton(
                              onPressed: (){},
                              child: Text('Forgot Password',style: TextStyle(fontSize: 20,color: Colors.white),),
                            ),
                          ),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          MaterialButton(
                          shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.grey)),
                          elevation: 5.0,
                          minWidth: 500,
                          height: 55.0,
                          color: Colors.blue,
                          child: Text('Login',style: TextStyle(fontSize: 30,color: Colors.white),),
                          onPressed: (){},
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        Container(
                          margin: const EdgeInsets.only(left:53),
                          child: Row(
                            children: <Widget>[
                              Text('Have an account?',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 20),),
                              FlatButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 30),))
                            ],
                          ),
                        ),
                              ],
                            ),
                          ),
                          
                 ], 
                ),
              ),
        )
      );
  }
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}






// // Color(0xff1E223F),