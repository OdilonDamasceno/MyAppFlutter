import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pages/main.page.dart';
import 'package:myapp/pages/reset.password.page.dart';

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
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                labelText: 'E-mail',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.white,
                ),
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text('Recuperar senha'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResetPassword()),
                  );
                },
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color.fromRGBO(255, 69, 38, 1.0),
                      Color.fromRGBO(255, 200, 55, 1.0)
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Icon(
                        Icons.face,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Main()),
                      ModalRoute.withName('/')
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: 'Facebook',
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  child: Image.asset(
                    'assets/facebook.png',
                    height: 50,
                    width: 50,
                  ),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  heroTag: 'Google',
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  child: Image.asset(
                    'assets/google.png',
                    height: 50,
                    width: 50,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Não tem uma conta?',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text('Cadastre-se'),
                onPressed: () {},
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
