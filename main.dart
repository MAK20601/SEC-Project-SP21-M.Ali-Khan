import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/TenantFile.dart';
import 'package:flutter/PropertyContainer.dart';
import 'AddPropertyFile.dart';
import 'DetailFile.dart';
import 'DetailFile2.dart';
import 'UpdateInfoFIle.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Home(),
      routes: <String, WidgetBuilder>{
        "/Details": (BuildContext context) => new Details(),
        "/Details2": (BuildContext context) => new Details2(),
        "/AddProperty": (BuildContext context) => new AddProperty(),
        "/UpdateInfo": (BuildContext context) => new UpdateInfo(),
        "/Tenant": (BuildContext context) => new Tenant()
      }));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Landlord'),
          centerTitle: true,
          backgroundColor: Colors.blue[500],
        ),
        body: Stack(children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: propertyContainer(),
              ),
            ],
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/AddProperty");
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue[500],
        ));
        
  }
}