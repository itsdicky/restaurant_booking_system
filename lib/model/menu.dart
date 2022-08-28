class Menu {
  String name;
  String description;
  int price;
  double rating;
  String imageURL;

  Menu({
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.imageURL
  });
}

var listMenu = [
  Menu(name: 'Pancake', description: 'This is Pancake', price: 10000, rating: 4.0, imageURL: 'assets/images/pexels-ash-376464.jpg'),
  Menu(name: 'Burger', description: 'This is Pancake', price: 100, rating: 4.0, imageURL: 'assets/images/pexels-ash-376464.jpg'),
  Menu(name: 'Sandwich', description: 'This is Pancake', price: 100, rating: 4.0, imageURL: 'assets/images/pexels-ash-376464.jpg'),
  Menu(name: 'Pancake', description: 'This is Pancake', price: 100, rating: 4.0, imageURL: 'assets/images/pexels-ash-376464.jpg'),
];