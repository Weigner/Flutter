import 'package:com/screens/racas_detalhes_screen.dart';
import 'package:com/screens/racas_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Raças App',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RacasScreen(),
        '/racas_detalhes': (context) => RacasDetalhesScreen(),
      },
    );
  }
}
