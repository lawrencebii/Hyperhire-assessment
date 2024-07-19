import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  get selectedIndex => _selectedIndex;
  void setSelectedIndex(int index) async {
    _selectedIndex = index;
    notifyListeners();
  }
}
