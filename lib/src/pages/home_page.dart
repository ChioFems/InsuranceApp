import 'package:flutter/material.dart';
import 'package:insurance_mobile_app/src/commons/dashboard_info_card.dart';
import 'package:insurance_mobile_app/src/pages/current_plan_page.dart';
import 'package:insurance_mobile_app/src/pages/past_plan_page.dart';
import 'package:insurance_mobile_app/src/pages/request_plan_page.dart';
import '../commons/my_info.dart';
import '../commons/opaque_image.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Stack(
                children: <Widget>[
                  OpaqueImage(
                    imageUrl: "assets/images/signup-avator.jpg",
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Dashboard", textAlign: TextAlign.left, 
                            style: TextStyle(fontSize: 22.0, color: Colors.white, )
                            ),
                          ),
                          MyInfo(),
                        ],
                      ),
                      ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.black12,
              ),
            ),
          ],
        ),
        Positioned(
          top: screenHeight * (4/9) ,
          left: 16.0,
          right: 16.0,
          bottom: 20.0,
          child: Column(
            children: <Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestPlanPage()));
                  },
                  child: DashboardInfoCard(
                    imagePath: "assets/images/request-plan.png",
                    firstName: "Request",
                    secondName: "Insurance Plan",
                  ),
                ),
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CurrentPlanPage()));
                  },
                  child: DashboardInfoCard(
                    imagePath: "assets/images/current-plan.png",
                    firstName: "Review",
                    secondName: "Current Plan",
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PastPlanPage()));
                },
                child: Card(
                  elevation: 12.0,
                  margin: EdgeInsets.only(left:15.0),
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/past-plans.png", color: Theme.of(context).primaryColor, width: 60, height: 80,
                    ),
                    SizedBox(height: 10.0),
                    Text("View", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text("Past Plans", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
          ),
        ),
              ),
            ),
            // DashboardInfoCard(
            //       imagePath: "assets/images/past-plans.png",
            //       firstName: "View",
            //       secondName: "Past Plans",
            //     ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}