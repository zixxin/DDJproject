import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../home.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            header(context),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 330, vertical: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Judson',
                        fontWeight: FontWeight.w700,
                        fontSize: 50),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  const Text(
                    '두프와 함께, 세상과 함께',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 100)),
                  SizedBox(
                    width: 1000,
                    child: Image.asset('images/spice.png'),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 70)),
                  SizedBox(
                    width: 1000,
                    child: Image.asset('images/poster.png'),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 70)),
                  SizedBox(
                    width: 1000,
                    child: Image.asset('images/incubating.png'),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 70)),
                  SizedBox(
                    width: 1000,
                    child: Image.asset('images/benefit.png'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
