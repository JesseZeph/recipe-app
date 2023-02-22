import 'package:flutter/material.dart';

import 'models.dart';

class ProfileManager extends ChangeNotifier {
  User get getUser => User(
        firstName: 'Thinees Kitchen',
        lastName: 'Kitchen',
        role: 'Agba Chef',
        profileImageUrl: 'assets/profile_pics/mona.jpg',
        points: 100,
        darkMode: _darkMode,
      );

  bool get didSelectUser => _didSelectUser;
  bool get didTapOnThinees => _tapOnThinees;
  bool get darkMode => _darkMode;

  var _didSelectUser = false;
  var _tapOnThinees = false;
  var _darkMode = false;

  set darkMode(bool darkMode) {
    _darkMode = darkMode;
    notifyListeners();
  }

  void tapOnThinees(bool selected) {
    _tapOnThinees = selected;
    notifyListeners();
  }

  void tapOnProfile(bool selected) {
    _didSelectUser = selected;
    notifyListeners();
  }
}
