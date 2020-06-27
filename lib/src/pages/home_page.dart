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
    //final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
        children: <Widget>[
    Expanded(
      flex: 3,
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
      child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestPlanPage()));
                            },
                            child: DashboardInfoCard(
                            //imagePath: "assets/images/request-plan.png",
                            imagePath: Icons.receipt,
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
                            //imagePath: "assets/images/current-plan.png",
                            imagePath: Icons.cached,
                            firstName: "Review",
                            secondName: "Current Plan",
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PastPlanPage()));
                            },
                            child: DashboardInfoCard(
                            //imagePath: "assets/images/request-plan.png",
                            imagePath: Icons.beenhere,
                            firstName: "View Past",
                            secondName: "Insurance Plans",
                            ),
                          ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
          ],
          ),
      ),
    ),
        ],
    ),
      );
  }
}