import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Pasos',
      theme: new ThemeData(
        primaryColor: Colors.blueGrey
      ),
      home: new _IniWidgets(),
    );
  }
}

class _IniWidgets extends StatefulWidget{

  @override
  State createState() {
    return _IniStatus();
  }
}

class _IniStatus extends State<_IniWidgets>{
  var _contador = 0;

  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: Text('App')),
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.grey ,
          shape: BoxShape.rectangle,
        ),
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(50,
            (index) {
              return Stack(
                alignment: Alignment(-1.0, 1.0),
                children: <Widget>[
                  Image.network('https://via.placeholder.com/350'),
                  Text('Cuenta:',
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  Align(
                    alignment: Alignment(1.0, 1.0),
                    child: Text('@mglriosr',
                      style: TextStyle(
                          color: Colors.blue
                      ),
                    ),
                  ),
                ],
              );
            }
          )
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Inicio')),
            BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Tareas')),
            BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('Logros')),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.blueGrey,
          onTap: _onItemTapped,
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: null,
        child: Icon(Icons.add),
      ),
    );

  }
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  }
