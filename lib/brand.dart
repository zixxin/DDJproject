import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'home.dart';

class BrandPage extends StatefulWidget {
  const BrandPage({super.key});

  @override
  State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
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
                    'Brand',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Judson',
                        fontWeight: FontWeight.w700,
                        fontSize: 50),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  const Text(
                    '우리의 브랜드를 소개합니다.',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  brands(),
                ],
              )),
          Image.asset(
            'images/향화정소개.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Image.asset(
            'images/올리브소개.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Image.asset(
            'images/황남샌드소개.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Image.asset(
            'images/황남우엉김밥소개.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Image.asset(
            'images/경주약과방소개.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Image.asset(
            'images/고도리소개.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Image.asset(
            'images/두더지강정소개.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(padding: EdgeInsets.only(top: 80)),
        ],
      ),
    );
  }
}
