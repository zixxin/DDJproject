import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'home.dart';

class CIPage extends StatefulWidget {
  const CIPage({super.key});

  @override
  State<CIPage> createState() => _CIPageState();
}

class _CIPageState extends State<CIPage> {
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
                    'CI',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Judson',
                        fontWeight: FontWeight.w700,
                        fontSize: 50),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  const Text(
                    '우리의 정체성, 방향성, 그리고 여러분의 아우성',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 70)),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset('images/logo.png'),
                      ),
                      const Text(
                        '기업명 \'두더지 프로젝트\'에는 두더지처럼 땅 속 깊은 곳에서 묵묵히 본업에 집중하자는 겸손의 의미가 담겨져있습니다. 두더지 프로젝트는 지금까지 보이지 않는 곳에서 묵묵히 성장해왔습니다. 언젠가는 땅 위로 올라와 정체를 드러내는 두더지의 특성처럼, 두더지 프로젝트 또한 한국을 넘어 전 세계에 존재감을 드러내며 K-FOOD의 세계화를 선도하는 기업으로 나아가고자 합니다.',
                        style: TextStyle(
                            color: black,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
