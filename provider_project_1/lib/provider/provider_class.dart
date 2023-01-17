import 'package:flutter/cupertino.dart';

class ProviderPage extends ChangeNotifier {
  List _cart = [];
  List get favoriteCart => _cart;

  void favorites(String itemName) {
    final favList = _cart.contains(itemName);
    if (favList) {
      _cart.remove(itemName);
    } else {
      _cart.add(itemName);
    }
    notifyListeners();
  }

  bool check(String itemName) {
    final checking = _cart.contains(itemName);
    return checking;
  }
}
