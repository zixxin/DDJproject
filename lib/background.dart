import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'home.dart';

class BackgroundPage extends StatefulWidget {
  const BackgroundPage({super.key});

  @override
  State<BackgroundPage> createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> {
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
        children: const <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 330, vertical: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Background',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Judson',
                        fontWeight: FontWeight.w700,
                        fontSize: 50),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(
                    '한국의 헤리티지로 글로벌 시장에서 성공할 수 있다는 것을 증명하겠습니다.',
                    style: TextStyle(
                        color: darkgrey,
                        fontFamily: 'NanumMyeongjo',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  Text(
                    '글로벌 시장 속 한류에 대한 뜨거운 관심은 뷰티, 엔터테이먼트를 거쳐 \'한국 음식\'으로 이어지고 있습니다. 그러나 많은 국내 로컬푸드 브랜드가 농인 법인수준에 머물고 있으며 지속적인 히트작의 부재, Scale-up을 위한 운영 노하우의 부족, 글로벌 네트워크의 부재에 따라 국내 반짝 히트 상품으로 전락하여 글로벌 히트상품이 되기 어려운 실정입니다. 뿐만 아니라, 글로벌 한국 F&B 기업들의 음식들은 대부분 해외 음식을 변형한 음식들이고 한국 자체에 뿌리를 둔 음식 카테고리로 정체성을 지키며 성공한 브랜드는 아직 찾기 어렵습니다. 이러한 배경을 바탕으로 (주)두더지 프로젝트는 한국에서 가장 트렌티한 \'경주\'에서 검증을 거쳐 해외에서 인정받는 국가대표 F&B 프렌차이즈로 도약하고자 합니다.',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'NanumMyeongjo',
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
