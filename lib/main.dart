import 'package:flutter/material.dart';
import 'package:restaurant_booking_system/component/booking_page.dart';
import 'package:restaurant_booking_system/component/dish_page.dart';
import 'package:restaurant_booking_system/component/home_page.dart';
import 'package:restaurant_booking_system/component/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomePage(),
    );
  }
}
