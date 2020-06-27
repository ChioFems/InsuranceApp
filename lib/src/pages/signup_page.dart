import 'package:flutter/material.dart';
import 'package:insurance_mobile_app/src/pages/home_page.dart';

import '../pages/signin_page.dart';

class SignUpPage extends StatefulWidget{
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{

bool _togglePasswordVisibility = true;
bool _toggleConfirmPasswordVisibility = true;

Widget _buildFirstNameTextField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Enter Firstname",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildSurNameTextField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Enter Surname",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildEmailTextField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Enter Email address",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildPhoneTextField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Enter Phone number",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildPasswordTextField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Password",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
      suffixIcon: IconButton(
        icon: _togglePasswordVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        onPressed: (){
          setState(() {
            _togglePasswordVisibility = !_togglePasswordVisibility;
          });
        },
        ),
    ),
    obscureText: _togglePasswordVisibility,
  );
}

Widget _buildConfirmPasswordTextField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Confirm Password",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
      suffixIcon: IconButton(
        icon: _toggleConfirmPasswordVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        onPressed: (){
          setState(() {
            _toggleConfirmPasswordVisibility = !_toggleConfirmPasswordVisibility;
          });
        },
        ),
    ),
    obscureText: _toggleConfirmPasswordVisibility,
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 90.0),
              Text("Logo here", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,)),
              SizedBox(height: 10.0),
              Form(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          boxShadow: [BoxShadow(
                            blurRadius: 3.0,
                            offset: Offset(0, 4.0),
                            color: Colors.black38,
                          ),
                          ],
                          image: DecorationImage(
                            image: AssetImage("assets/images/signup-avator.jpg"),
                            fit: BoxFit.cover,
                            ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      _buildFirstNameTextField(),
                      SizedBox(height: 20.0,),
                      _buildSurNameTextField(),
                      SizedBox(height: 20.0,),
                      _buildEmailTextField(),
                      SizedBox(height: 20.0,),
                      _buildPhoneTextField(),
                      SizedBox(height: 20.0,),
                      _buildPasswordTextField(),
                      SizedBox(height: 20.0,),
                      _buildConfirmPasswordTextField(),
                    ],
                  ),
                  ),
              ),
              SizedBox(height: 30.0),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> HomePage()));
                },
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text("Sign Up", style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Divider(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?", style: TextStyle(color: Color(0xFFBDC2CB), fontSize: 16.0),),
                  SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: (){ 
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> SignInPage()));
                    },
                    child: Text("Sign In", style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16.0),)),
                ],
              ),
              SizedBox(height: 100.0),
            ]
          ),
        ),
        ),
    );
  }
}