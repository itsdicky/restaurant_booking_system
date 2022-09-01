import 'package:flutter/material.dart';
import 'package:restaurant_booking_system/component/home_page.dart';

import '../model/dish.dart';

class DishPage extends StatelessWidget {
  final Dish dish;

  const DishPage({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DishPageMobile(dish: this.dish);
        } else {
          return DishPageMobile(dish: this.dish);
        }
      },
    );
  }
}

class DishPageMobile extends StatelessWidget {
  final Dish dish;
  const DishPageMobile({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    dish.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                // height: 200,
                // width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(dish.imageURL, fit: BoxFit.cover,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: FavoriteButton(dish: this.dish),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dish.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(dish.description),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  final Dish dish;
  const FavoriteButton({Key? key, required this.dish}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState(this.dish);
}

class _FavoriteButtonState extends State<FavoriteButton> {
  //bool isFavorite = false;
  final Dish dish;

  _FavoriteButtonState(this.dish);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          dish.isFav = !dish.isFav;
        });
      },
      icon: Icon(
        dish.isFav ? Icons.star : Icons.star_border,
        color: Colors.amber,
        size: 26,
      ),
    );
  }
}