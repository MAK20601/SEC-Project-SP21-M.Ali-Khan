import 'package:flutter/material.dart';


class propertyContainer extends StatefulWidget {

  @override
  _propertyContainerState createState() => _propertyContainerState();
}

class _propertyContainerState extends State<propertyContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/Details');
      },

      child: Column(
        children: <Widget>[

          Container(
        padding: EdgeInsets.all(9.0),
        color: Colors.blue[100],
        height: 160,
        width: 800,
        child: new Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/house.jpg"),
              radius: 70,
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 35),
                Text('Double Story House', style: TextStyle(fontSize: 25),),
                SizedBox(height: 8),
                Text('Area: 5 marla', style: TextStyle(fontSize: 18),),
                SizedBox(height: 8,),
                Text('Rs 1,00,000', style: TextStyle(fontSize: 18),)
              ],
            )
          ],
        ),
      ),
      SizedBox(height: 15),
      Container(
        padding: EdgeInsets.all(9.9),
        color: Colors.blue[100],
        height: 160,
        width: 800,
        child: new Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/garage.jpg"),
              radius: 70,
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 35),
                Text('Car Garage', style: TextStyle(fontSize: 25),),
                SizedBox(height: 8),
                Text('Area: 20x40 feet', style: TextStyle(fontSize: 18),),
                SizedBox(height: 8,),
                Text('Rs 30,000', style: TextStyle(fontSize: 18),)
              ],
            )
          ],
        ),
      ),

      SizedBox(height: 15),
      Container(
        padding: EdgeInsets.all(9.9),
        color: Colors.blue[100],
        height: 160,
        width: 800,
        child: new Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/shop.jpg"),
              radius: 70,
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 35),
                Text('Shop', style: TextStyle(fontSize: 25),),
                SizedBox(height: 8),
                Text('Area: 10x10 feet', style: TextStyle(fontSize: 18),),
                SizedBox(height: 8,),
                Text('Rs 20,000', style: TextStyle(fontSize: 18),)
              ],
            )
          ],
        ),
      ),


        ],)
      
      

      
    );
  }
}





















