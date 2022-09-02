import 'package:flutter/material.dart';
import 'package:restaurant_booking_system/model/place.dart';

class BookingPage extends StatelessWidget {
  final Place place;

  const BookingPage({Key? key, required this.place}) : super(key: key);

  @override
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Text(
                        place.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  SizedBox(
                     height: 200,
                     width: 400,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(place.imageURL, fit: BoxFit.cover,),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: const <Widget>[
                                    Text('Tables', style: TextStyle(color: Colors.black54)),
                                    Text('4', style: TextStyle(fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text('Seats', style: TextStyle(color: Colors.black54)),
                                    Text('16', style: TextStyle(fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text('Seat/table', style: TextStyle(color: Colors.black54)),
                                    Text('4', style: TextStyle(fontWeight: FontWeight.w600)),
                                  ],
                                )
                              ],
                            ),
                            const Divider(),
                            const SizedBox(height: 10.0),
                            Text(place.description, style: const TextStyle(color: Colors.black54)),
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
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                  height: 70,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text('Price'),
                          Text(
                            'Rp0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        style: flatButtonStyle,
                        child: const Text('Book'),
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
  minimumSize: const Size(88, 40),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);