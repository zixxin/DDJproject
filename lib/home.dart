import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final logoImage = {
  "images/여도가주.png",
  "images/향화정.png",
  "images/올리브.png",
  "images/황남샌드.png",
  "images/황남우엉김밥.png",
  "images/약과방.png",
  "images/고도리.png",
  "images/두더지강정.png"
};

final imageList = {
  "images/황남우엉김밥카운터.JPG",
  "images/고도리내부.JPG",
  "images/올리브빵.JPG",
  "images/황남우엉김밥내부.JPG",
  "images/약과방내부.JPG",
  "images/올리브내부.JPG",
  "images/황남샌드전경.JPG",
  "images/올리브전경.JPG",
};

final brandsName = {
  "두더지 프로젝트",
  "향화정",
  "올리브",
  "황남 샌드",
  "황남 우엉 김밥",
  "약과방",
  "고도리",
  "두더지 강정",
};

final imageTextEng = {
  "K-Food Experience at its Finest",
  "A Hometown Flower, Staying in Gyeongju",
  "A Cafe Nestled in the Greenery of Gyeongju",
  "Cookies with Memories of Daereungwon",
  "Gyeongju's Signature Kimbap",
  "Yakgwa Captures the Heritage of Gyeongju",
  "Hip Traditional Taverns with Hand-dipped Booze",
  "The Fateful Meeting of Calamari and Chicken",
};

final imageTextKor = {
  "최고의 한식 경험을 두더지와 함께",
  "고향의 꽃, 경주에 머무르다",
  "경주의 푸르른 땅에 자리잡은 카페",
  "경주 대릉원의 추억을 담은 쿠키",
  "경주의 시그니처 김밥",
  "경주의 헤리티지를 담은 약과",
  "직접 담근 술로 ‘힙'한 전통 주점",
  "한치와 닭고기의 운명적 만남",
};

int activeIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
              scrolledUnderElevation: 0,
              backgroundColor: backgroundColor,
              automaticallyImplyLeading: false,
              elevation: 0.0,
              leading: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 100)),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: 50,
                    child: Image.asset('images/logo.png'),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 8)),
                  const Text(
                    '두더지 프로젝트',
                    style: TextStyle(
                        fontFamily: 'NanumMyeongjo',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: red),
                  ),
                ],
              ),
              leadingWidth: 700,
              actions: [
                Row(
                  children: [
                    headerTitle('About us'),
                    headerTitle('Business'),
                    headerTitle('Career'),
                    headerTitle('Contact'),
                    const Padding(padding: EdgeInsets.only(right: 100)),
                  ],
                ),
              ],
              // bottom: PreferredSize(
              //     preferredSize: const Size.fromHeight(100.0),
              //     child: Column(children: [
              //       Divider(
              //           thickness: 1,
              //           color: grey,
              //           indent: MediaQuery.of(context).size.width * 0.1,
              //           endIndent: MediaQuery.of(context).size.width * 0.1),
              //       const Padding(
              //         padding: EdgeInsets.only(top: 15),
              //       ),
              //       bottomTitle('Background'),
              //       const Padding(
              //         padding: EdgeInsets.only(top: 5),
              //       ),
              //       bottomTitle('Vision&Mission'),
              //       const Padding(
              //         padding: EdgeInsets.only(top: 5),
              //       ),
              //       bottomTitle('History'),
              //       const Padding(
              //         padding: EdgeInsets.only(top: 5),
              //       ),
              //       bottomTitle('CI'),
              //       const Padding(
              //         padding: EdgeInsets.only(bottom: 15),
              //       ),
              //     ])),
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          showImage(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 330),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 130),
                    child: brands(),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget bottomTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
          color: black,
          fontFamily: 'Judson',
          fontWeight: FontWeight.w400,
          fontSize: 13),
    );
  }

  Widget showImage() {
    return Stack(alignment: Alignment.bottomCenter, children: <Widget>[
      CarouselSlider.builder(
        options: CarouselOptions(
          initialPage: 0,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          aspectRatio: 2 / 1,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) => setState(() {
            activeIndex = index;
          }),
        ),
        itemCount: imageList.length,
        itemBuilder: (context, index, realIndex) {
          final path = imageList.elementAt(index);
          final name = brandsName.elementAt(index);
          final eng = imageTextEng.elementAt(index);
          final kor = imageTextKor.elementAt(index);
          return imageSlider(path, name, eng, kor, index);
        },
      ),
      Align(alignment: Alignment.bottomCenter, child: indicator())
    ]);
  }

  Widget imageSlider(path, name, eng, kor, index) {
    return Container(
      width: double.infinity,
      height: 240,
      color: Colors.transparent,
      child: Stack(
        children: [
          Image.asset(
            path,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            color: black.withOpacity(0.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: grey,
                        fontFamily: 'NanumMyeongjo',
                        fontWeight: FontWeight.w800,
                        fontSize: 22),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                  ),
                  Text(
                    eng,
                    style: const TextStyle(
                        color: white,
                        fontFamily: 'Judson',
                        fontWeight: FontWeight.w400,
                        fontSize: 26),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                  ),
                  Text(
                    kor,
                    style: const TextStyle(
                        color: white,
                        fontFamily: 'NanumMyeongjo',
                        fontWeight: FontWeight.w400,
                        fontSize: 26),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget indicator() => Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      alignment: Alignment.bottomCenter,
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageList.length,
        effect: JumpingDotEffect(
            dotHeight: 6,
            dotWidth: 6,
            activeDotColor: Colors.white,
            dotColor: Colors.white.withOpacity(0.6)),
      ));
}

Widget headerTitle(String title) {
  return FilledButton(
    style: ButtonStyle(
      shadowColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
      backgroundColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
      overlayColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
    ),
    onPressed: () {
      if (title == 'About us') {
      } else if (title == 'Our Story') {
      } else if (title == 'Career') {
      } else if (title == 'Contact') {}
    },
    child: Text(
      title,
      style: const TextStyle(
          color: black,
          fontFamily: 'Judson',
          fontWeight: FontWeight.w700,
          fontSize: 23),
    ),
  );
}

Widget brands() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 1000,
        child: Image.asset('images/brands.png'),
      ),
    ],
  );
}
