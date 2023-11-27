import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../home.dart';

class ApplyPage extends StatefulWidget {
  const ApplyPage({super.key});

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
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
                    'Apply',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Judson',
                        fontWeight: FontWeight.w700,
                        fontSize: 50),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  const Text(
                    '두프 지원으로 얻는 두프의 지원',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 100)),
                  SizedBox(
                    width: 1000,
                    child: Image.asset('images/manager_pool.png'),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 70)),
                  SizedBox(
                    width: 1000,
                    child: Image.asset('images/cook_pool.png'),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 100)),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 330, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '(주)두더지 프로젝트는 언제나 새로운 인재를 찾고 있습니다.\n이력서 및 자기소개서 양식을 다운받으시고 작성하신 후\n아래의 대표 메일로 파일을 첨부하여 이메일을 보내주세요.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: black,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                const Padding(padding: EdgeInsets.only(top: 25)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: red,
                        minimumSize: const Size(200, 60),
                        alignment: Alignment.center,
                        textStyle: const TextStyle(fontSize: 18)),
                    onPressed: () {},
                    child: const Text('양식 다운로드하기',
                        style: TextStyle(
                          color: white,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w800,
                        ))),
                const Padding(padding: EdgeInsets.only(top: 25)),
                const Text(
                  '대표 메일: vision8241@hanmail.com',
                  style: TextStyle(
                      color: black,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
