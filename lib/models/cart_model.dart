import 'package:flutter/foundation.dart';
import 'package:shoes_app/models/shoe_model.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeCart = [
    Shoe(
      name: "Zoom FREAK",
      price: "236",
      imagePath: "assets/images/zoomfreak.png",
      description:
          "The forward thinking design of his latest signature shoe in the era of 2024.👟🏆",
    ),
    Shoe(
      name: "Air Jordans",
      price: "220",
      imagePath: "assets/images/air_jordan.png",
      description:
          "Iconic style meets peak performance. Step into the legacy of a champion.👟🏆",
    ),
    Shoe(
      name: "KD Treys",
      price: "240",
      imagePath: "assets/images/kdtrey.png",
      description:
          " Dynamic precision meets comfort. Gear up for victory on and off the court.🏀👟",
    ),
    Shoe(
      name: "Kyrie 7",
      price: "190",
      imagePath: "assets/images/kyrie.png",
      description:
          " Agile and artistic through out and built for the quick and creative player.🏀👟",
    ),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeCart;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
