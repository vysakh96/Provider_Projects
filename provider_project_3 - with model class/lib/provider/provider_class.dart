import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier{
  List _fav_icn = [];
  List _fav_color = [];
  List _fav_name = [];

  List get getIcn => _fav_icn;
  List get getColor => _fav_color;
  List get getName => _fav_name;

  void cartItems(IconData icn,Color cl,String name){
    final favName = _fav_name.contains(name);
    if(favName){
      _fav_icn.remove(icn);
      _fav_color.remove(cl);
      _fav_name.remove(name);
    }else{
      _fav_icn.add(icn);
      _fav_color.add(cl);
      _fav_name.add(name);
    }
    notifyListeners();
  }

  bool icn_change(String icnName){
    final favIcon = _fav_name.contains(icnName);
    return favIcon;
  }
}