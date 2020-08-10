import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
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

Widget buildBody(BuildContext context) {
  return ListView(
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
        padding: const EdgeInsets.all(10),
        height: 160.0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 80,
                  ),
                  Text('Nombre y Apellidos del niño(a)'),
                  Text('Historial'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Icon(Icons.redeem),
                  Icon(Icons.location_on),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('¡Premios del día!'),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        height: 75.0,
        color: Color(0xffdfe9f2),
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text('FECHA:'),
                  Text(DateFormat("dd/MM/yyyy").format(DateTime.now())),
                  Text(DateFormat("h:m:s a").format(DateTime.now()))
                ],
              ),
            ),
            Expanded(
              child: Icon(
                Icons.insert_emoticon,
                size: 70.0,
              ),
            ),
            Expanded(
              child: Text('¡HOY ESTUVO!'),
            ),
          ],
        ),
      ),
      Container(
        height: 380.0,
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(2),
              child: RaisedButton(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.filter_tilt_shift),
                    Text('Desayunó'),
                    Text('Comió todo'),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2),
              child: RaisedButton(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.filter_tilt_shift),
                    Text('Almorzó'),
                    Text('Comió la mitad'),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2),
              child: RaisedButton(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.filter_tilt_shift),
                    Text('Merendó'),
                    Text('Comió todo'),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2),
              child: RaisedButton(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.filter_tilt_shift),
                    Text('Fue al baño')
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2),
              child: RaisedButton(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.filter_tilt_shift),
                    Text('Líquido, No. de veces')
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2),
              child: RaisedButton(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.filter_tilt_shift),
                    Text('Sólido, No. de veces')
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(),
            Container(
              padding: const EdgeInsets.all(2),
              child: RaisedButton(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.filter_tilt_shift),
                    Text('Durmió'),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Container(),
          ],
        ),
      ),
      Container(
        color: Color(0xffdfe9f2),
        width: MediaQuery.of(context).size.width,
        height: 100.0,
        child: Padding(
          padding: EdgeInsets.only(left: 3.0, right: 3.0, top: 20),
          child: Column(
            children: <Widget>[
              Container(
                child: Text('ASIGNACIONES IMPORTANTES'),
              ),
              Text('Día del medio ambiente aprendió A, B, C'),
            ],
          ),
        ),
      ),
      Container(
        color: Color(0xffd4d4d4),
        height: 275.0,
        child: Padding(
          padding: EdgeInsets.only(left: 3.0, right: 3.0, top: 20),
          child: Column(
            children: <Widget>[
              Container(
                child: Text('OBSERVACIONES:'),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  maxLines: 8,
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  child: Text('Responder'),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
