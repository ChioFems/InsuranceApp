import 'package:flutter/material.dart';

class RequestPlanPage extends StatefulWidget{
  @override
  _RequestPlanPageState createState() => _RequestPlanPageState();
}

class _RequestPlanPageState extends State<RequestPlanPage>{

Widget _buildPlateNumberField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Enter plate number here",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildCarModelField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Enter car model here",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
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
              Text("Plan Application", style: TextStyle(fontSize: 22.0)),
          ],
          ),
        ),
              ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("1. Please select a Plan:", style: TextStyle(fontSize: 20.0,)),
                SizedBox(height: 20.0,),
                Row(
                  children: <Widget>[
                    Icon(Icons.radio_button_checked),
                    SizedBox(width: 10.0),
                    Text("Third Party Insurance",),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Icon(Icons.radio_button_unchecked),
                    SizedBox(width: 10.0),
                    Text("Comprehension Insurance",),
                  ],
                ),
                SizedBox(height: 30.0,),
                Text("2. Enter Plate Number:", style: TextStyle(fontSize: 20.0,)),
                SizedBox(height: 20.0,),
                _buildPlateNumberField(),
                SizedBox(height: 20.0,),
                Text("3. What is your car model?", style: TextStyle(fontSize: 20.0,)),
                SizedBox(height: 20.0,),
                _buildCarModelField(),
                SizedBox(height: 20.0,),
                Text("4. Attach car image:", style: TextStyle(fontSize: 20.0,)),
                SizedBox(height: 20.0),
                SizedBox(height: 30.0),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text("Submit Application", style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ]
            ),
          ),
        ),
              ],
            ),
      ),
    );
  }
}