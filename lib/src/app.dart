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
        primaryColor: Colors.cyan[300],
        accentColor: Colors.cyan[800],
      ),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
            builder: (BuildContext context){
              switch(settings.name){
                case "/":
                  return LoginPage(context);
              }
            },
        );
      },
    );
  }
}
