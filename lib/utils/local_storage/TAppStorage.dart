import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import '../helpers/app_utils.dart';

class ObjectBoxService {
  static late SharedPreferences _prefs;
  static const _authTokenKey = 'auth_token';
  static const _isLoggedInKey = 'is_logged_in';


  static Future<void> init() async {
    try {
      _prefs = await SharedPreferences.getInstance();
      localStorage = _prefs;/// initializing the global
      log('ObjectBoxService initialized successfully');
    } catch (e) {
      log('ObjectBoxService initialization failed: $e');
      rethrow;
    }
  }


  /// ---------- SAVE ----------
  static Future<void> saveAuthToken(String token) async {
    await _prefs.setString(_authTokenKey, token);
    await _prefs.setBool(_isLoggedInKey, true);
  }

  /// ---------- READ ----------
  static String? get authToken => _prefs.getString(_authTokenKey);
  static bool get isLoggedIn => _prefs.getBool(_isLoggedInKey) ?? false;


  /// ---------- CLEAR ----------
  static Future<void> logout() async {
    await _prefs.remove(_authTokenKey);
    await _prefs.remove(_isLoggedInKey);
  }
}
