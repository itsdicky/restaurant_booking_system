import 'package:flutter/material.dart';
import 'package:restaurant_booking_system/model/menu.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: const HomePageMobile(),
    );
  }
}

class HomePageMobile extends StatelessWidget {
  final Menu menu;

  const HomePageMobile({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, Customer!'),
                  Text('Welcome to Projeckt Restaurant'),
                ],
              ),
              Icon(Icons.account_circle),
            ],
          ),
          SizedBox(height: 20.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images/pexels-life-of-pix-67468.jpg'),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Menu'),
              Icon(Icons.list),
            ],
          ),
          SizedBox(height: 20.0),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:
            ),
          ),
        ],
      ),
    );
  }
}