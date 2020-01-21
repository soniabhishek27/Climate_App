import 'package:flutter/material.dart';
import 'PriceScreen.dart';


void main()
{
  runApp(myApp());

}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.white
      ),
      home: PriceScreen(),
    );

  }
}

