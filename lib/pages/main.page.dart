import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(36, 36, 36, 1),
        leading: Container(
          child: SizedBox.expand(
            child: FlatButton(
              child: Icon(
                Icons.dehaze,
                color: Colors.yellow,
              ),
              onPressed: () {},
            ),
          ),
        ),
        title: Title(
          child: Text(
            'OdilonApp',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold),
          ),
          color: Colors.deepOrange,
        ),
        actions: <Widget>[
          FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.message,
              color: Colors.yellow,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Color.fromRGBO(36, 36, 36, 1),
        child: ListView(
          children: [],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(36, 36, 36, 1),
        unselectedItemColor: Colors.yellow,
        selectedItemColor: Colors.deepOrange,
        items: [
          BottomNavigationBarItem(
              title: Title(
                child: Text(
                  'Principal',
                  style: TextStyle(fontSize: 10),
                ),
                color: Colors.white,
              ),
              icon: Icon(Icons.message)),
          BottomNavigationBarItem(
              title: Title(
                child: Text(
                  'Notícias',
                  style: TextStyle(fontSize: 10),
                ),
                color: Colors.white,
              ),
              icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(
              title: Title(
                child: Text(
                  'Pesquisar',
                  style: TextStyle(fontSize: 10),
                ),
                color: Colors.white,
              ),
              icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              title: Title(
                child: Text(
                  'Seu perfil',
                  style: TextStyle(fontSize: 10),
                ),
                color: Colors.deepOrange,
              ),
              icon: Icon(
                Icons.account_circle,
              )),
        ],
      ),
    );
  }
}
