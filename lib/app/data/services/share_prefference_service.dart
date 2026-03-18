import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';

class SharedPrefferenceService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> saveUserModel(UserModel userModel) async {
    SharedPreferences pref = await _prefs;
    pref.setString('userModel', jsonEncode(userModel));
    log('sharepreference : save userModel');
  }

  Future<String?> getUserModel() async {
    SharedPreferences pref = await _prefs;
    return pref.getString('userModel');
  }

  Future<void> saveToken(String token) async {
    SharedPreferences pref = await _prefs;
    pref.setString('token', token);
    log('sharepreference : save token $token');
  }

  Future<String?> getToken() async {
    SharedPreferences pref = await _prefs;
    return pref.getString('token');
  }

  void clear() async {
    SharedPreferences pref = await _prefs;
    pref.clear();
  }
}
