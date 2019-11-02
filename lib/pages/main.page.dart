import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(36, 36, 36, 1),
            primaryColor: Colors.red,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(
                    color: Colors
                        .yellow))), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: Colors.deepOrange, size: 30,),
          unselectedIconTheme: IconThemeData(color: Colors.yellow, size: 25,),
          selectedFontSize: 12,
          selectedLabelStyle: TextStyle(color: Colors.deepOrange, fontSize: 12,),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Text('Principal'), icon: Icon(Icons.message)),
            BottomNavigationBarItem(
                title: Text(
                  'Notícias',
                ),
                icon: Icon(Icons.notifications)),
            BottomNavigationBarItem(
                title: Text(
                  'Pesquisar',
                ),
                icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                title: Text(
                  'Seu Perfil',
                ),
                icon: Icon(
                  Icons.account_circle,
                )),
          ],
        ),
      ),
    );
  }

  List _widgetOptions = [
    Container(
      color: Color.fromRGBO(36, 36, 36, 1),
      child: ListView(
        children: [],
      ),
    ),
    Container(
      color: Color.fromRGBO(36, 36, 36, 1),
      child: ListView(
        children: [],
      ),
    ),
    Container(
      color: Color.fromRGBO(36, 36, 36, 1),
      child: ListView(
        children: [],
      ),
    ),
    Container(
      color: Color.fromRGBO(36, 36, 36, 1),
      child: ListView(
        children: [],
      ),
    ),
  ];
}
