import 'package:flutter/material.dart';

class PastPlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                        Text("Previous Plans", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
                    ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.blueAccent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical:5),
                        child: ListTile(
                          title: Text("Third Party Insurance", style: TextStyle(fontWeight: FontWeight.bold),),
                          trailing: Text("2020/01/05", style: TextStyle(fontSize: 14.0),
                        ),
                        ),
                      );
                    },
                    itemCount: 10,
                  ), 
                ),
              ],
            ),
    );
  }
}