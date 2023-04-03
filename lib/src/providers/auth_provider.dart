
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:noviindus/src/pages/home.dart';

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    setLoading(true);
    try {
      Response response = await post(
          Uri.parse('http://flutter.noviindus.co.in/api/LoginApi'),
          body: {
            'email': email,
            'password': password,
          });
      if (response.statusCode == 200) {
        print('successful');
        setLoading(false);
        print(email + password);
      } else {
        setLoading(false);
        print('failed   $response');
      }
    } catch (e) {
      setLoading(false);
      print(e.toString());
    }
  }
}
