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

final imageTextEng = {
  "K-Food Experience at its Finest",
  "K-Food Experience at its Finest ",
  "K-Food Experience at its Finest  ",
  "K-Food Experience at its Finest   ",
  "K-Food Experience at its Finest    ",
  "K-Food Experience at its Finest     ",
  "K-Food Experience at its Finest      ",
  "K-Food Experience at its Finest       ",
};

final imageTextKor = {
  "최고의 한식 경험을 두더지와 함께",
  "최고의 한식 경험을 두더지와 함께 ",
  "최고의 한식 경험을 두더지와 함께  ",
  "최고의 한식 경험을 두더지와 함께    ",
  "최고의 한식 경험을 두더지와 함께     ",
  "최고의 한식 경험을 두더지와 함께      ",
  "최고의 한식 경험을 두더지와 함께       ",
  "최고의 한식 경험을 두더지와 함께        ",
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
                      child: Image.asset('images/두더지.png'),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    const Text(
                      'DDJ project',
                      style: TextStyle(
                          fontFamily: 'Judson',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: red),
                    ),
                  ],
                ),
                leadingWidth: 700,
                actions: [
                  Row(
                    children: [
                      headerTitle('About us'),
                      headerTitle('Our Story'),
                      headerTitle('Career'),
                      headerTitle('Contact'),
                      const Padding(padding: EdgeInsets.only(right: 100)),
                    ],
                  ),
                ]),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          showImage(),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 350, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: logo(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 210, horizontal: 60),
                    child: logoList(),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 160),
                  //   child: logo(),
                  // ),
                  // const VerticalDivider(
                  //   thickness: 2.83,
                  //   color: black,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 210),
                    child: mission(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 210),
                    child: vision(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 210),
                    child: career(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 210),
                    child: contact(),
                  ),
                ],
              )),
        ],
      ),
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
          final eng = imageTextEng.elementAt(index);
          final kor = imageTextKor.elementAt(index);
          return imageSlider(path, eng, kor, index);
        },
      ),
      Align(alignment: Alignment.bottomCenter, child: indicator())
    ]);
  }

  Widget imageSlider(path, eng, kor, index) {
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
                width: MediaQuery.of(context).size.width / 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    eng,
                    style: const TextStyle(
                        color: white,
                        fontFamily: 'Judson',
                        fontWeight: FontWeight.w400,
                        fontSize: 30),
                  ),
                  Text(
                    kor,
                    style: const TextStyle(
                        color: white,
                        fontFamily: 'NanumMyeongjo',
                        fontWeight: FontWeight.w400,
                        fontSize: 27),
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

final GlobalKey logoKey = GlobalKey();
final GlobalKey storyKey = GlobalKey();
final GlobalKey careerKey = GlobalKey();
final GlobalKey contactKey = GlobalKey();

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
        Scrollable.ensureVisible(logoKey.currentContext!,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            alignment: 0);
      } else if (title == 'Our Story') {
        Scrollable.ensureVisible(storyKey.currentContext!,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            alignment: 0);
      } else if (title == 'Career') {
        Scrollable.ensureVisible(careerKey.currentContext!,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            alignment: 0);
      } else if (title == 'Contact') {
        Scrollable.ensureVisible(contactKey.currentContext!,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            alignment: 0);
      }
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

Widget logo() {
  return Column(
    key: logoKey,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 170,
        child: Image.asset('images/logo.png'),
      ),
      const Padding(padding: EdgeInsets.only(bottom: 10)),
      const Text(
        'DDJ project',
        style: TextStyle(
            fontFamily: 'Judson',
            fontWeight: FontWeight.w700,
            fontSize: 33,
            color: red),
      ),
    ],
  );
}

Widget logoList() {
  return GridView.builder(
    key: storyKey,
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      mainAxisSpacing: 50,
      crossAxisSpacing: 10,
      childAspectRatio: 1 / 1,
    ),
    itemCount: logoImage.length,
    itemBuilder: (context, int index) => SizedBox(
      width: 100,
      child: Image.asset(logoImage.elementAt(index)),
    ),
  );
}

Widget mission() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'MISSION',
        style: TextStyle(
            fontFamily: 'Judson',
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: black),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 30),
        child: Text(
          'To aims for food, space, and culture.',
          style: TextStyle(
              fontFamily: 'Judson',
              fontWeight: FontWeight.w400,
              fontSize: 23,
              color: black),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 10, bottom: 60),
        child: Text(
          '음식, 공간, 문화를 지향합니다.',
          style: TextStyle(
              fontFamily: 'NanumMyeongjo',
              fontWeight: FontWeight.w400,
              fontSize: 21,
              color: black),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          missionCircle('Food', '음식'),
          missionCircle('Space', '공간'),
          missionCircle('Culture', '문화'),
        ],
      ),
    ],
  );
}

Widget missionCircle(String eng, String kor) {
  return ClipOval(
    clipper: MyClipper(),
    child: Container(
      width: 250,
      height: 195,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: orange,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            eng,
            style: const TextStyle(
                fontFamily: 'Judson',
                fontWeight: FontWeight.w400,
                fontSize: 32,
                color: black),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              kor,
              style: const TextStyle(
                  fontFamily: 'NanumMyeongjo',
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: black),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget vision() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'VISION',
        style: TextStyle(
            fontFamily: 'Judson',
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: black),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          visionView('한식의 세계화'),
          visionView('지역 경제 활성화'),
          visionView('일자리 창출')
        ],
      ),
    ],
  );
}

Widget visionView(String title) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          width: 280,
          height: 195,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xffF0EDE7),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Text(
          title,
          style: const TextStyle(
              fontFamily: 'NanumMyeongjo',
              fontWeight: FontWeight.w400,
              fontSize: 22,
              color: black),
        ),
      ),
    ],
  );
}

Widget career() {
  return Column(
    key: careerKey,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'CAREER',
        style: TextStyle(
            fontFamily: 'Judson',
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: black),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 30),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 900,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF0EDE7),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text(
            '인재상 및 인재 채용 철학',
            style: TextStyle(
                fontFamily: 'NanumMyeongjo',
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: black),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 50),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          careerCircle('열정'),
          careerCircle('도전'),
          careerCircle('실행력'),
          careerCircle('생존력'),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 50),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 900,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF0EDE7),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text(
            '인재 양성 전략',
            style: TextStyle(
                fontFamily: 'NanumMyeongjo',
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: black),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 30),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 900,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF0EDE7),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text(
            '두더지 프로젝트 인턴십 프로그램 소개',
            style: TextStyle(
                fontFamily: 'NanumMyeongjo',
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: black),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 30),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 900,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF0EDE7),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text(
            '한 눈에 모아보는 복지 혜택',
            style: TextStyle(
                fontFamily: 'NanumMyeongjo',
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: black),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 30),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 900,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF0EDE7),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Text(
            '두더지 프로젝트와 함께하고 싶다면?',
            style: TextStyle(
                fontFamily: 'NanumMyeongjo',
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: black),
          ),
        ],
      ),
    ],
  );
}

Widget careerCircle(String kor) {
  return ClipOval(
    clipper: MyClipperCareer(),
    child: Container(
      width: 200,
      height: 165,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: orange,
      ),
      child: Text(
        kor,
        style: const TextStyle(
            fontFamily: 'NanumMyeongjo',
            fontWeight: FontWeight.w400,
            fontSize: 27,
            color: black),
      ),
    ),
  );
}

Widget contact() {
  return Column(
    key: contactKey,
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        'CONTACT',
        style: TextStyle(
            fontFamily: 'Judson',
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: black),
      ),
    ],
  );
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 250, 195);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}

class MyClipperCareer extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 200, 165);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
