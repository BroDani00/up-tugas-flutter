class Coffee {
  final String name;
  final String type;
  final String price;
  final double rating;
  final String image;
  final String description;

  Coffee({
    required this.name,
    required this.type,
    required this.price,
    required this.rating,
    required this.image,
    required this.description,
  });
}

// Data dummy untuk katalog aplikasi kamu
List<Coffee> listCoffee = [
  Coffee(
    name: "Cappuccino",
    type: "with Cream",
    price: "4.53",
    rating: 4.8,
    image: "assets/images/capucino.jpg",
    description:
        "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the foamed milk on top.",
  ),
  Coffee(
    name: "Americano",
    type: "origin coffee",
    price: "4.90",
    rating: 4.9,
    image: "assets/images/amerikano.jpg",
    description:
        "Americano is a style of coffee prepared by diluting an espresso with hot water, giving it a similar strength to brewed coffee but with a different flavor.",
  ),
  Coffee(
    name: "Latte",
    type: "sweetened",
    price: "5.20",
    rating: 4.7,
    image: "assets/images/latte.jpg",
    description:
        "A latte is a coffee drink made with espresso and steamed milk. The term as used in English is a shortened form of the Italian caffè latte, which means 'milk coffee'.",
  ),
  Coffee(
    name: "Cold Brew",
    type: "coffee with ice",
    price: "3.99",
    rating: 4.5,
    image: "assets/images/coldbrew.jpg",
    description:
        "Cold brew is a method of brewing coffee using cold or room temperature water and a longer steeping time, resulting in a smoother, less acidic coffee.",
  ),
  Coffee(
    name: "Es Latte",
    type: "sweet and creamy",
    price: "3.50",
    rating: 5.0,
    image: "assets/images/eslate.jpg",
    description: "creamy mocca latte sweet dream.",
  ),
];
