import 'package:flutter/material.dart';

class OpaqueImage extends StatelessWidget {

  final imageUrl;

  const OpaqueImage({Key key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
        imageUrl,
        width: double.maxFinite,
        height: double.maxFinite,
        fit: BoxFit.fitWidth,
      ),
      Container(
        color: Colors.blueGrey.withOpacity(0.85),
      ),
      ],
    );
  }
}