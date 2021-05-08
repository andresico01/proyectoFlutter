import 'package:clase_flutter_app/src/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rutas app",
      initialRoute: '/',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.indigo[400],
        accentColor: Colors.red[900],
      ),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
            builder: (BuildContext contexts){
              switch(settings.name){
                case "/":
                  return MyHomePage(context: contexts);
                default :
                  return MyHomePage(context: contexts);
              }
            },
        );
      },
    );
  }
}
