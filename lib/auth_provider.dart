import 'package:flutter/material.dart';
import 'user_model.dart';

class AuthProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  void login(String email, String password) {
    // Giriş işlemi burada yapılır (API çağrısı veya yerel kontrol)
    _user = User(firstName: 'John', lastName: 'Doe', email: email); // Örnek veri
    notifyListeners();
  }

  void createAccount(String firstName, String lastName, String email, String password) {
    // Hesap oluşturma işlemi burada yapılır (API çağrısı veya yerel kontrol)
    _user = User(firstName: firstName, lastName: lastName, email: email);
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
