import 'package:flutter/material.dart';
import '../commons/rounded_image.dart';
import '../commons/radial_progress.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadialPrgress(
            width: 4,
            goalCompleted: 0.8,
            child: RoundedImage(
            imagePath: "assets/images/signup-avator.jpg",
            size: Size.fromWidth(120.0),
            ),
          ),
          SizedBox(height:10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Claudia Daniel",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Text(", 26",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
          SizedBox(height:10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.location_on, color: Colors.white, size: 18.0,),
              Text(" Mikocheni B",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}