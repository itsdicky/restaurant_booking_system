class Place {
  String name;
  String description;
  String imageURL;
  int tables;
  int seats;

  Place({
    required this.name,
    required this.description,
    required this.imageURL,
    required this.tables,
    required this.seats,
  });
}

var restaurantPlaceList = [
  Place(name: 'Main hall', description: 'This is the Main hall section', tables: 5, seats: 10, imageURL: 'assets/images/pexels-life-of-pix-67468.jpg'),
  Place(name: 'Backyard', description: 'This is the Backyard section', tables: 5, seats: 10, imageURL: 'assets/images/pexels-daria-shevtsova-1030979.jpg'),
  Place(name: 'Side view', description: 'This is the Side view section', tables: 5, seats: 10, imageURL: 'assets/images/pexels-igor-starkov-914388.jpg'),
];