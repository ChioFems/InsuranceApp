import 'package:flutter/material.dart';
import 'package:insurance_mobile_app/src/pages/home_page.dart';
import 'package:insurance_mobile_app/src/pages/signup_page.dart';

class SignInPage extends StatefulWidget{
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>{

  bool _toggleVisibility = true;

Widget _buildEmailTextField(){
  return TextFormField(
    decoration: InputDecoration(
      hintText: "Your username",
      hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0,
      ),
    ),
  );
}

Widget _buildPasswordTextField(){
  return TextFormField(
    decoration: InputDecoration(
      hintText: "Password",
      hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0,
      ),
      suffixIcon: IconButton(
        icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        onPressed: (){
          setState(() {
            _toggleVisibility = !_toggleVisibility;
          });
        },
        ),
    ),
    obscureText: _toggleVisibility,
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Logo here", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,)),
            SizedBox(height: 75.0),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 20.0,),
                    _buildPasswordTextField(),
                  ],
                ),
                ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgot Password?", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor,))
              ],
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
                  child: Text("Sign In", style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Divider(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?", style: TextStyle(color: Color(0xFFBDC2CB), fontSize: 16.0),),
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> SignUpPage()));
                  },
                  child: Text("Sign Up", style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16.0),)),
              ],
            ),
          ]
        ),
        ),
    );
  }
}