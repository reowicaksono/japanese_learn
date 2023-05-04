part of '../../pages.dart';

final Apppreferences _apppreferences = Apppreferences();

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _header(context),
            SizedBox(height: MediaQuery.of(context).size.width * 0.3),
            _body(context),
            SizedBox(height: MediaQuery.of(context).size.width * 0.3),
            _footer(context, _apppreferences),
          ],
        ),
      )),
    );
  }
}

Widget _header(context) {
  return Center(
    child: Text(
      "Header",
      style: TextStyle(
          fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
    ),
  );
}

Widget _body(context) {
  return Column(
    children: [
      Container(
        width: 200,
        height: 200,
        child: Image.asset("assets/image/splash.png"),
      ),
      SizedBox(height: 20),
      Container(
        child: Text(
          "Fast and simple way to \n      learn languages",
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),
        ),
      )
    ],
  );
}

Widget _footer(context, setData) {
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          onPressed: () {
            showModalLogin(context);
            // _showmodalLogin(context);
            // _apppreferences.setOnboarding(true);
            // print("oke diubah");
            // Navigator.pushReplacementNamed(context, Approute.WRAPPER);
          },
          child: Text("Get Started"),
        ),
      ),
      SizedBox(height: 20),
      Container(
        child: Text(
          "Already have an account?",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
    ],
  );
}

Future<void> showModalLogin(context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        color: Colors.black45,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Please sign in using a Google Account',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 16),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 30 * 3,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.ac_unit,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Skip',
                style: TextStyle(
                    color: Color(0xffF2F2F2),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      );
    },
  );
}
