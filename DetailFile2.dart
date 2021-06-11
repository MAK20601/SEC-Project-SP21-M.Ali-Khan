import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Details2 extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details2'),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: RaisedButton.icon(
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.of(context).pushNamed("/UpdateInfo");
                },
                icon: Icon(Icons.edit),
                label: Text("Update Info"),
                color: Colors.blue[500],
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 150.0, horizontal: 8),
            child: Align(
              alignment: Alignment.topRight,
              child: RaisedButton.icon(
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.of(context).pushNamed("/Tenant");
                },
                icon: Icon(Icons.person_outline),
                label: Text("Tenant"),
                color: Colors.blue[500],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
            child: Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton.icon(
                shape: StadiumBorder(),
                onPressed: () {
                  _showDialog();
                },
                icon: Icon(Icons.remove_circle_outline),
                label: Text("Remove Property"),
                color: Colors.blue[500],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/house.jpg"),
                radius: 70,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 30,
            child: Row(
              children: <Widget>[
                infoLeading('Type'),
                Text(
                  "Garage",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          Positioned(
            top: 240,
            left: 30,
            child: Row(
              children: <Widget>[
                infoLeading('Area'),
                Text(
                  "20x40 feet",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          Positioned(
            top: 280,
            left: 30,
            child: Row(
              children: <Widget>[
                infoLeading("Address"),
                Text(
                  "Street 2 G-8/1 Islamabad",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
          Positioned(
            top: 320,
            left: 30,
            child: Row(
              children: <Widget>[
                infoLeading('Rent'),
                Text(
                  "30,000",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget infoLeading(String inputHeadingText) {
    return Text(
      inputHeadingText + ": ",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return CupertinoAlertDialog(
          //backgroundColor: Colors.deepOrange[500],
          title: new Text("Remove Property"),
          content: new Text("Are You Sure?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text(
                "No",
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new CupertinoDialogAction(
              child: new Text("Yes"),
              onPressed: () {
                // Toast.show('Property Removed!', context);
                Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName));
              },
            ),
          ],
        );
      },
    );
  }
}
