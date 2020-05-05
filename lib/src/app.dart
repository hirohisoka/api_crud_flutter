import 'package:crud/src/ui/formadd/form_add_screen.dart';
import 'package:crud/src/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        key: _scaffoldState,
        appBar: AppBar(
          title: Text(
            "FLUTTER CRUD API",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: HomeScreen(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormAddScreen()),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.black26,
        ),
      ),
    );
  }
}
