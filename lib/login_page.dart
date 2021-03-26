import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/Sign_In_page_Dark.png");
    Image image = Image(image: assetImage, width: 380, height: 1000.0);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          child: image,
        ),
        /*SizedBox(height: 60),*/
        Container(
          //child: _signInButton(),
        ),
      ]),
    );

  }
}