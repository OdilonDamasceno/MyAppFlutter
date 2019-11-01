import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      );
  }
}