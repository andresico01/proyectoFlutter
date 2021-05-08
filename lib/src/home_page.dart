import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
class LoginPage extends StatelessWidget {
  // This widget is the root of your application.
  BuildContext context;
  LoginPage(this.context,{Key key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mi primera pagina principal',context: context,),
    );
  }
}*/

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.context}) : super(key: key);
  final BuildContext context;
  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).accentColor,
        title: Text('Mi primera pagina principal',

          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Theme.of(context).primaryColor,Theme.of(context).accentColor],

            )
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,


              padding: EdgeInsets.symmetric(vertical: 60),
              child: Image.asset("assents/images/kayn2.jpg",
                      width: double.infinity,
                      height: 150,
              ),
            ),
            Center(
              child: Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Theme.of(context).accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(55),
                  ),
                ),
                margin: const EdgeInsets.only(top: 150,left: 25,right: 25),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Text("Kayn es portador de un arma muy antigua y lucha contra Rhaast, el oscuro que alberga, en un tira y afloja por hacerse con el control. O Rhaast el oscuro triunfará o Kayn conseguirá dominarlo y se convertirá en el Asesino de las sombras. Oscuro: Se cura un porcentaje del daño de hechizos infligido a campeones.",
                              style: TextStyle(fontFamily: 'Indie Flower'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        hoverColor: Colors.amber,
        hoverElevation: 0,
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text("drawerContent"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
