import 'package:flutter/material.dart';
import 'package:japanese_learn_app/utils/app_preferences.dart';
import 'package:japanese_learn_app/utils/app_route.dart' as Approute;
import 'package:shared_preferences/shared_preferences.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  final Apppreferences _pref = Apppreferences();

  void initState() {
    super.initState();
    _checkLogin();
  }

  void _checkLogin() async {
    final isLogged = await _pref.getLoginState();

    if (isLogged) {
      Navigator.pushReplacementNamed(context, Approute.HOME);
    } else {
      print("not logged in $isLogged");
      Navigator.pushReplacementNamed(context, Approute.LOGIN);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
