part of 'pages.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              Text("data"),
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
