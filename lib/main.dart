import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kinderbooks/screen/my_child/MyChild.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: buildDrawer(context),
      body: buildBody(context),
    );
  }
}

Widget buildAppBar(BuildContext context) {
  return AppBar(
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Text("Kinderapp"),
  );
}

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 120.0,
          child: DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            padding: EdgeInsets.zero,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  "Kinder\n  App",
                  style: TextStyle(color: Colors.white),
                ),
                radius: 30,
              ),
              title: Text("Mamá de X"),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            FontAwesomeIcons.thLarge,
            size: 50,
          ),
          title: Text("Inicio"),
          onTap: () => Navigator.of(context).pop(),
        ),
        ListTile(
          leading: Icon(
            Icons.account_circle,
            size: 50,
          ),
          title: Text("Mi hijo"),
          onTap: () {
            Navigator.of(context).pop();
            navigateTo(context, MyChild());
          },
        ),
        ListTile(
          leading: Icon(
            Icons.book,
            size: 50,
          ),
          title: Text("Reportes"),
          onTap: () => Navigator.of(context).pop(),
        ),
        ListTile(
          leading: Icon(
            Icons.mail,
            size: 50,
          ),
          title: Text("Notificaciones"),
          onTap: () => Navigator.of(context).pop(),
        ),
      ],
    ),
  );
}

Widget buildBody(BuildContext context) {
  return SingleChildScrollView(
    child: Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).

        children: <Widget>[
          Container(
            height: 75.0,
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text("Mi hijo"),
              subtitle: Text("¿Cómo va el día de mi hijo?"),
              trailing: Icon(Icons.navigate_next),
              onTap: () => navigateTo(context, MyChild()),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 75.0,
            child: ListTile(
              leading: Icon(
                Icons.book,
                size: 50,
              ),
              title: Text("Reportes"),
              subtitle: Text("Ver la actuación general de mi hijo"),
              trailing: Icon(Icons.navigate_next),
              onTap: () => true,
            ),
          ),
          Divider(
            height: 15.0,
            color: Colors.grey,
          ),
          Container(
            height: 75.0,
            child: ListTile(
              leading: Icon(
                Icons.mail,
                size: 50,
              ),
              title: Text("Notificaciones"),
              subtitle: Text("Mensajes importantes de la escuela"),
              trailing: Icon(Icons.navigate_next),
              onTap: () => true,
            ),
          ),
          Divider(
            height: 15.0,
            color: Colors.grey,
          ),
          Container(
            height: 75.0,
            child: ListTile(
              leading: Icon(
                FontAwesomeIcons.mapSigns,
                size: 50,
              ),
              title: Text("Eventos"),
              subtitle: Text("Actividades programadas"),
              trailing: Icon(Icons.navigate_next),
              onTap: () => true,
            ),
          ),
          Divider(
            height: 15.0,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}

void navigateTo(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}
