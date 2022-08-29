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
  Place(name: 'Main Hall', description: 'This is the Main Hall section', tables: 5, seats: 10, imageURL: 'assets/images/pexels-trang-doan-1099680.jpg'),
  Place(name: 'Main Hall', description: 'This is the Main Hall section', tables: 5, seats: 10, imageURL: 'assets/images/pexels-trang-doan-1099680.jpg'),
  Place(name: 'Main Hall', description: 'This is the Main Hall section', tables: 5, seats: 10, imageURL: 'assets/images/pexels-trang-doan-1099680.jpg'),
];