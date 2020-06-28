import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RequestPlanPage extends StatefulWidget{
  
  @override
  RequestPlanPageState createState() => RequestPlanPageState();
}

class RequestPlanPageState extends State{

Widget _buildVehicleYearField(){
  return TextFormField(
    maxLength: 4, autovalidate: true, keyboardType: TextInputType.number,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Vehicle manufacture year",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildVehicleMakeField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Vehicle make",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildVehicleModelField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Vehicle model",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

Widget _buildPlateNumberField(){
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "Plate number",
      labelStyle: TextStyle(color: Color(0xFFBDC2CB),
      ),
    ),
  );
}

int insurancePlanGroup = 1;
int ownershipGroup = 1;
int licenseGroup = 1;

File imageURI;

  Future getImageFromCamera() async {

    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      imageURI = image;
    });
  }

  Future getImageFromGallery() async {

    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      imageURI = image;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: <Widget>[
          SafeArea(
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back)
                  ),
                SizedBox(width: 20.0),
                Text("Plan Application", 
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Text("Fill in the following form and submit application for processing when you are done:", 
          softWrap: true, style: TextStyle(fontSize: 16.0)
          ),
          SizedBox(height: 10.0),
          Text("Question 1: Type of Insurance", 
          softWrap: true, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 10.0),
          Text("Please select a plan of your preferance:", 
          softWrap: true, style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Card(
            elevation: 2, 
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 1, groupValue: insurancePlanGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          insurancePlanGroup = T;
                        });}
                      ),
                      Text("Third Party Insurance"),
                  ]
                ),
                Divider( height: 1, indent: 40.0, endIndent: 20.0,),
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 2, groupValue: insurancePlanGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          insurancePlanGroup = T;
                        });}
                      ),
                      Text("Comprehensive Insurance"),
                  ]
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Text("Question 2: Car Ownership", 
          softWrap: true, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 10.0),
          Text("What is your car ownership status?", 
          softWrap: true, style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Card(
            elevation: 2, 
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 1, groupValue: ownershipGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          ownershipGroup = T;
                        });}
                      ),
                      Text("Financed"),
                  ]
                ),
                Divider( height: 1, indent: 40.0, endIndent: 20.0,),
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 2, groupValue: ownershipGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          ownershipGroup = T;
                        });}
                      ),
                      Text("Leased"),
                  ]
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Text("What is your licence status?", 
          softWrap: true, style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Card(
            elevation: 2, 
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 1, groupValue: licenseGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          licenseGroup = T;
                        });}
                      ),
                      Text("Permit"),
                  ]
                ),
                Divider( height: 1, indent: 40.0, endIndent: 20.0,),
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 2, groupValue: licenseGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          licenseGroup = T;
                        });}
                      ),
                      Text("Valid"),
                  ]
                ),
                Divider( height: 1, indent: 40.0, endIndent: 20.0,),
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 3, groupValue: licenseGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          licenseGroup = T;
                        });}
                      ),
                      Text("Suspended"),
                  ]
                ),
                Divider( height: 1, indent: 40.0, endIndent: 20.0,),
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 4, groupValue: licenseGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          licenseGroup = T;
                        });}
                      ),
                      Text("Revoked"),
                  ]
                ),
                Divider( height: 1, indent: 40.0, endIndent: 20.0,),
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 5, groupValue: licenseGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          licenseGroup = T;
                        });}
                      ),
                      Text("Expired"),
                  ]
                ),
                Divider( height: 1, indent: 40.0, endIndent: 20.0,),
                Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Theme.of(context).primaryColor,
                      value: 6, groupValue: licenseGroup, onChanged: (T){
                        print(T);
                        setState(() {
                          licenseGroup = T;
                        });}
                      ),
                      Text("Foreign license"),
                  ]
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Text("Question 3: Car Specifications", 
          softWrap: true, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 10.0),
          Text("What is your vehicle's manufacture year?", 
          softWrap: true, style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          _buildVehicleYearField(),
          SizedBox(height: 10.0),
          Text("What is your vehicle's make?", 
          softWrap: true, style: TextStyle(fontSize: 16.0),
          ),
           SizedBox(height: 10.0),
          _buildVehicleMakeField(),
          SizedBox(height: 10.0),
          Text("What is your vehicle's model?", 
          softWrap: true, style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          _buildVehicleModelField(),
          SizedBox(height: 10.0),
          Text("What is your vehicle's plate number?", 
          softWrap: true, style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          _buildPlateNumberField(),
          SizedBox(height: 10.0),
          Text("Attach vehicle picture:", 
          softWrap: true, style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 150.0,
              height: 200.0,    
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  imageURI == null
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.camera_alt, size: 40, color: Colors.black38,), 
                          onPressed: () => getImageFromCamera(),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () => getImageFromGallery(),
                          child: Text("or select an image from the gallery", style: TextStyle(fontStyle: FontStyle.italic),)),
                    ],
                  )
                  : Image.file(imageURI, width: 300, height: 200, fit: BoxFit.cover),  
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0),
          imageURI != null
          ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Change image?", style: TextStyle(fontStyle: FontStyle.italic),),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.add_a_photo, color: Colors.black38,), 
                onPressed: () => getImageFromCamera(),
                        ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.add_photo_alternate, color: Colors.black38,), 
                onPressed: () => getImageFromGallery(),
                        ),
            ],
          )
          : Text(" "),
          SizedBox(height: 20.0),
          Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: RaisedButton(
          onPressed: () {},
          child: Text("Submit Application", style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold)),
          textColor: Colors.white,
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          )
          ),
          SizedBox(height: 75.0),
        ],
      ),
    );
  }
}