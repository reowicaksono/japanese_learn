import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:japanese_learn_app/utils/appconstants.dart' as Appconstants;
import 'package:japanese_learn_app/utils/app_route.dart' as Approute;
import 'package:japanese_learn_app/views/pages.dart';
import 'package:japanese_learn_app/views/profile.dart';
import 'package:japanese_learn_app/views/wrapper.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final data = settings.arguments != null
        ? settings.arguments as Map<String, dynamic>
        : null;
    final RouteSettings? routeSettings = data != null
        ? data[Appconstants.ARGS_ROUTE_sETTINGS] as RouteSettings
        : null;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreenPage());
      case Approute.WRAPPER:
        return MaterialPageRoute(builder: (_) => Wrapper());
      case Approute.HOME:
        return MaterialPageRoute(builder: (_) => Home());
      case Approute.PROFILE:
        return MaterialPageRoute(builder: (_) => Profile());
      case Approute.LOGIN:
        return MaterialPageRoute(builder: (_) => Login());
      case Approute.ONBOARDING:
        return MaterialPageRoute(builder: (_) => Onboarding());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("no data route"),
                  ),
                ));
    }
  }
}
