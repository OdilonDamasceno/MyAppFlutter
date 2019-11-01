import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odi/src/pages/login/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(26, 26, 26, 1.0),
      child: Center(
        child: Container(
          width: 180,
          height: 180,
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}
