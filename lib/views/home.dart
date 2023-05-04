part of 'pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Apppreferences _prefs = Apppreferences();
  late bool isOnboarding;
  late bool isLogged;
  @override
  void initState() {
    super.initState();
    getdata();
  }

  void getdata() async {
    isOnboarding = await _prefs.getOnboarding();
    isLogged = await _prefs.getLoginState();
    print("$isOnboarding , $isLogged");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _avatar(context,
                          datagambar: Appconstant.IMAGE_PATH + "/splash.png"),
                      SizedBox(
                        width: 8,
                      ),
                      Text.rich(TextSpan(
                        text: "Hi, ",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        children: [
                          TextSpan(
                            text: "Reo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      _avatar(context,
                          datagambar: Appconstant.IMAGE_PATH + "/splash.png"),
                      _avatar(context,
                          datagambar: Appconstant.IMAGE_PATH + "/splash.png"),
                    ],
                  )
                ],
              ),
              TextButton(
                child: Text("data"),
                onPressed: () {
                  _prefs.setLoginState(false);
                },
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _avatar(context, {datagambar}) {
  return CircleAvatar(
    radius: 20,
    child: Center(
      child: Image.asset(datagambar),
    ),
  );
}
