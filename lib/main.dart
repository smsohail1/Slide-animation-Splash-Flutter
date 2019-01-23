import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_splash_screen/homeScreen.dart';
import 'package:flutter_ui_splash_screen/slide_right_transition.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorDark: Colors.amber,
        primaryColorBrightness: Brightness.dark,
        cursorColor: Colors.red,
        primaryColor: Colors.green,

//        primaryColor: Color(0xFFF1F2F4),
//        buttonTheme: ButtonThemeData(
//            buttonColor: Colors.deepOrangeAccent,
//            textTheme: ButtonTextTheme.primary),
//        fontFamily: 'Rubik',
      ),
      home: new SplashScreen()
//    routes: <String, WidgetBuilder>{
//      '/HomeScreen': (BuildContext context) => new HomeScreen()
//    },
      ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

//  void navigationPage() {
  //  Navigator.of(context).pushReplacementNamed('/HomeScreen');
//    setState(() {
//      Navigator.pushReplacement(
//        context,
//        new MaterialPageRoute(builder: (context) => HomeScreen()),
//      );
//    });
  //}

  void navigationPage() {
//    Navigator.push(
//      context,
//      SlideRightRoute(widget: HomeScreen()),
//    );

//    Navigator.pushReplacement(
//      context,
//      PageRouteBuilder(
//        pageBuilder: (context, animation1, animation2) {
//          return HomeScreen();
//        },
//        transitionsBuilder: (context, animation1, animation2, child) {
//          return FadeTransition(
//            opacity: animation1,
//            child: child,
//          );
//        },
//        transitionDuration: Duration(milliseconds: 4000),
//      ),
//    );

    //Navigator.of(context).pushReplacementNamed('/HomeScreen');
    Navigator.pushReplacement(
        context,
        PageTransition(
            duration: const Duration(milliseconds: 800),
            type: PageTransitionType.rightToLeft,
            child: HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 3), navigationPage);
    return new Scaffold(
      body: new Center(
        child: new Image.asset('images/flutterwithlogo.png'),
      ),
    );
  }
}
