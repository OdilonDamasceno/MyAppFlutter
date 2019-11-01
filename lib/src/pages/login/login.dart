import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:odi/src/pages/login/widgets/form.dart';

class Login extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color.fromRGBO(36, 36, 36, 1.0),
        child: ListView(
          primary:
              false, //Para aqueles negocin que fica apos chegar no final da pagina
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            Formu(),
          ],
        ),
      ),
    );
  }
}
