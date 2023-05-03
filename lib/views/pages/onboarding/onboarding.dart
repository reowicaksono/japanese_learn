part of '../../pages.dart';

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
            _footer(context),
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
        child: Lottie.asset("assets/lottie/onboarding.json"),
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

Widget _footer(context) {
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
          onPressed: () {},
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
