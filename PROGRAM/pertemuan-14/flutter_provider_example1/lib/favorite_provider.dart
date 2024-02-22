import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<String> _favorites = [];

  void toggleFavorite(String word) {
    if (_favorites.contains(word)) {
      _favorites.remove(word);
    } else {
      _favorites.add(word);
    }
    notifyListeners();
  }

  bool isExist(String word) {
    return _favorites.contains(word);
  }

  void clearFavorite() {
    _favorites = [];
    notifyListeners();
  }
}