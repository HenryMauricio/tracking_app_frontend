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
        color: Colors.white,
          child: Center(
              child: Column(
                children: <Widget>[
                  new Text('El contador está en: $_contador',
                  style: TextStyle(fontSize: 40.0),),
                  RaisedButton(
                    onPressed: (){
                      setState(() {
                        _contador++;
                      });
                    print(_contador);
                    },
                    child: Text('+'),
                  )
                ],
              )
          )
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
        child: Text('+'),
      ),
    );

  }
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  }
