import 'package:flutter/material.dart';
import 'package:flutter_combo_box/components/combo_box.dart';
import 'package:restaurant_booking_system/model/place.dart';

class BookingPage extends StatelessWidget {
  final Place place;

  const BookingPage({Key? key, required this.place}) : super(key: key);

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return BookingPageMobile(place: place);
        } else {
          return BookingPageMobile(place: place);
        }
      },
    );
  }
}

class BookingPageMobile extends StatelessWidget {
  final Place place;

  const BookingPageMobile({Key? key, required this.place}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
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
                        place.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  SizedBox(
                     height: 200,
                     width: 400,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(place.imageURL, fit: BoxFit.cover,),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('Tables'),
                                    Text('4'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Seats'),
                                    Text('16'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Seat/table'),
                                    Text('4'),
                                  ],
                                )
                              ],
                            ),
                            Divider(),
                            SizedBox(height: 10.0),
                            Text(place.description),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                  height: 70,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price'),
                          Text(
                            'Rp.12000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Book'),
                        style: flatButtonStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//buttonStyle
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  backgroundColor: Colors.black,
  minimumSize: Size(88, 40),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);