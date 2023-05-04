part of '../../pages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    final Apppreferences _prefs = Apppreferences();
    final isLogged = await _prefs.getLoginState();
    final isOnboarding = await _prefs.getOnboarding();

    if (isOnboarding) {
      print("isOnboarding $isOnboarding , isLogged $isLogged");
      if (isLogged) {
        print(isLogged);
        return Timer(duration, () {
          Navigator.pushReplacementNamed(context, Approute.HOME);
        });
      } else {
        return Timer(duration, () {
          Navigator.pushReplacementNamed(context, Approute.WRAPPER);
        });
      }
    } else {
      return Timer(duration, () {
        Navigator.pushReplacementNamed(context, Approute.ONBOARDING);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('${Appconstant.IMAGE_PATH}/splash.png'),
            ),
          ),
          Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Text(
                "Copyrigth Riegekki. 2023",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 12),
              ))
        ],
      ),
    );
  }
}
