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
  Place(name: 'Main hall', description: 'This is the Main hall section', tables: 10, seats: 40, imageURL: 'assets/images/pexels-life-of-pix-67468.jpg'),
  Place(name: 'Backyard', description: 'This is the Backyard section', tables: 8, seats: 32, imageURL: 'assets/images/pexels-daria-shevtsova-1030979.jpg'),
  Place(name: 'Side view', description: 'This is the Side view section', tables: 6, seats: 24, imageURL: 'assets/images/pexels-igor-starkov-914388.jpg'),
  Place(name: 'Pool side', description: 'This is the Pool side section', tables: 8, seats: 16, imageURL: 'assets/images/pexels-pixabay-460537.jpg'),
  Place(name: 'Cafeteria', description: 'This is the Cafeteria section', tables: 6, seats: 18, imageURL: 'assets/images/pexels-dmitry-zvolskiy-3679601.jpg'),
  Place(name: 'Industrial', description: 'This is the Industrial section', tables: 8, seats: 16, imageURL: 'assets/images/pexels-eka-sutrisno-1863622.jpg'),
  Place(name: 'Outdoor', description: 'This is the Pool side section', tables: 6, seats: 24, imageURL: 'assets/images/pexels-tirachard-kumtanom-601169.jpg'),
];