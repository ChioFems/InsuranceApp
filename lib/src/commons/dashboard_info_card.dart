import 'package:flutter/material.dart';

class DashboardInfoCard extends StatelessWidget {
  final imagePath, firstName, secondName;

  const DashboardInfoCard({Key key, this.imagePath, @required this.firstName, @required this.secondName}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 12.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: Column(
            children: <Widget>[
              // Image.asset(
              //   imagePath, color: Theme.of(context).primaryColor, width: 60, height: 80,
              // ),
              Icon(imagePath, color: Theme.of(context).primaryColor, size: 80,),
              SizedBox(height: 10.0),
              Text(firstName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
              Text(secondName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
            ],
          ),
        ),
      );
  }
}