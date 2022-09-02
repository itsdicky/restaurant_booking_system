import 'package:flutter/material.dart';
import 'package:restaurant_booking_system/component/booking_page.dart';
import 'package:restaurant_booking_system/component/dish_page.dart';
import 'package:restaurant_booking_system/component/list_page.dart';
import 'package:restaurant_booking_system/model/dish.dart';
import 'package:restaurant_booking_system/model/place.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SafeArea(
        child: HomePageMobile(),
      ),
    );
  }
}

class HomePageMobile extends StatefulWidget {

  const HomePageMobile({Key? key}) : super(key: key);

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'Hi, Customer!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Welcome to Projeckt Restaurant',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.account_circle, size: 30.0, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              height: 160,
              width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/images/pexels-life-of-pix-67468.jpg', fit: BoxFit.cover,),
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const ListPage(title: 'Dish');
                      }));
                    },
                    icon: const Icon(Icons.list),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 190,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listDish.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Dish dish = listDish[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DishPage(dish: dish);
                        }));
                      },
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
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(dish.imageURL, fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      dish.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    Text('Rp${dish.price}', style: const TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Place',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const ListPage(title: 'Place');
                      }));
                    },
                    icon: const Icon(Icons.list),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const RestaurantPlaceList(),
          ],
        ),
      ),
    );
  }
}

class RestaurantPlaceList extends StatelessWidget {
  const RestaurantPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final Place place = restaurantPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BookingPage(place: place);
            }));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 100,
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(place.imageURL, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(place.description),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.chair, size: 14, color: Colors.black54),
                                  const SizedBox(width: 5.0),
                                  Text(place.seats.toString(), style: const TextStyle(color: Colors.black54)),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.table_restaurant, size: 14, color: Colors.black54),
                                  const SizedBox(width: 5.0),
                                  Text(place.tables.toString(),  style: const TextStyle(color: Colors.black54)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 3,
    );
  }
}

// class FavoriteDish extends StatefulWidget {
//   final Function() updateFavorite;
//   const FavoriteDish({Key? key, required this.updateFavorite}) : super(key: key);
//
//   @override
//   _FavoriteDishState createState() => _FavoriteDishState();
// }
// class _FavoriteDishState extends State<FavoriteDish> {
//   _FavoriteDishState();
//
//   Widget build(BuildContext context) {
//     return
//   }
// }