import 'package:flutter/material.dart';

class CurrentPlanPage extends StatefulWidget{
  @override
  _CurrentPlanPageState createState() => _CurrentPlanPageState();
}

class _CurrentPlanPageState extends State<CurrentPlanPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
          children: <Widget>[
            SafeArea(
            child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                     child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back)
                    ),
                  SizedBox(width: 20.0),
                  Text("Current Plan Status", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
              ],
              ),
            ),
          ),
            Container(
              child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                Text("1. Your current plan is:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.blueAccent)),
                SizedBox(height: 10),
                Text("      Third Party Insurance", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400)),
                SizedBox(height: 15),
                Text("2. Insurance start date:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.blueAccent)),
                SizedBox(height: 10),
                Text("      01/25/2020", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400)),
                SizedBox(height: 15),
                Text("3. Insurance end date:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.blueAccent)),
                SizedBox(height: 10),
                Text("      01/25/2021", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400)),
                SizedBox(height: 15),
                Text("4. Plate Number:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.blueAccent)),
                SizedBox(height: 10),
                Text("      T258 DEF", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400)),
                SizedBox(height: 15),
                Text("5. Car Model:", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.blueAccent)),
                SizedBox(height: 10),
                Text("      Kirikouu", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400)),
                SizedBox(height: 10),
            ],
          ),
              ),
        ),
      ]
            ),
        );
  }
}