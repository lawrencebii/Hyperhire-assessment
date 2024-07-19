import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int _currentIndex = 1;
  get currentIndex => _currentIndex;
  void setIndex(val) {
    _currentIndex = val;
    notifyListeners();
  }

  String _selectedProfile = "";
  get selectedProfile => _selectedProfile;
  void selectProfile(val) {
    _selectedProfile = val;
    notifyListeners();
  }

  String _selectedImage = '';
  get selectedImage => _selectedImage;
  void selectImage(image) {
    _selectedImage = image;
    notifyListeners();
  }
}
