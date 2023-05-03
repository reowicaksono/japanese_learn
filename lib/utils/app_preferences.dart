import 'package:shared_preferences/shared_preferences.dart';

class Apppreferences {
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  void setLoginState(bool loginState) async {
    final SharedPreferences pref = await _pref;
    pref.setBool("login", loginState);
  }

  Future<bool> getLoginState() async {
    final SharedPreferences pref = await _pref;
    return pref.getBool("login") ?? false;
  }
}
