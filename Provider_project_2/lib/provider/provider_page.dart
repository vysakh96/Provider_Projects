import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier {
  List _favImg = [];
  List _favName = [];
  List get favoriteImg => _favImg;
  List get favoriteName => _favName;

  void favorites(String item, String image) {
    final favImgList = _favImg.contains(image);
    if (favImgList) {
      _favImg.remove(image);
      _favName.remove(item);
    } else {
      _favImg.add(image);
      _favName.add(item);
    }
    notifyListeners();
  }

  bool icn_change(String icnName) {
    final favIcn = _favName.contains(icnName);
    // final favIncname = _favName.contains(icnName);
    return favIcn;
  }
}
