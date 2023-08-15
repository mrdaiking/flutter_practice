import 'package:demo/screens/trip_page.dart';
import 'package:flutter/material.dart';
import 'screens/home_page.dart'; // Import the HomePage component

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: TripPage(),
    ));
