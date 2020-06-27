import 'package:flutter/material.dart';

class CurrentPlanPage extends StatefulWidget{
  @override
  _CurrentPlanPageState createState() => _CurrentPlanPageState();
}

class _CurrentPlanPageState extends State<CurrentPlanPage>{

Widget _buildSelectPlanTextField(){
  return TextFormField(
    readOnly: true,
    decoration: InputDecoration(
      hintText: "Selected Plan",
      hintStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildPlateNumberField(){
  return TextFormField(
    readOnly: true,
    decoration: InputDecoration(
      hintText: "Plate Number",
      hintMaxLines: 2,
      hintStyle: TextStyle(color: Color(0xFFBDC2CB), 
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
                          Text("Current Plan Status", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
                      ],
                      ),
                    ),
                  ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Form(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          _buildSelectPlanTextField(),
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
                          _buildPlateNumberField(),
                          SizedBox(height: 20.0,),
                        ],
                      ),
                      ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: Text("Request New Plan", style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ]
              ),
              ),
          ],
        ),
      ),
    );
  }
}