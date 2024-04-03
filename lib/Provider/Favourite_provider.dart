

import 'package:flutter/material.dart';
import 'package:provider_again/models/model_class.dart';

class FavouriteProvider with ChangeNotifier{
  List<ModelClass> _numberOfIndex = [];

  List<ModelClass> get numberOfIndex => _numberOfIndex;


  void addIndex(ModelClass index){
  _numberOfIndex.add(index);
    notifyListeners();
  }

  void removeIndex(int index){
    _numberOfIndex.remove(index);
    notifyListeners();
  }

}