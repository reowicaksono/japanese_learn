part of "../../pages.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Apppreferences _prefs = Apppreferences();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              setState(() {
                _prefs.setLoginState(true);
              });
            },
            child: Text("data")),
      ),
    );
  }
}
