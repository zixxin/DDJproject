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
                      width: 70,
                      child: Image.asset('images/두더지.png'),
                    ),
                    const Text(
                      'DDJ project',
                      style: TextStyle(
                          fontFamily: 'Judson',
                          fontWeight: FontWeight.w700,
                          fontSize: 35,
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
                      headerTitle('Meta·V'),
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
                  const EdgeInsets.symmetric(horizontal: 130, vertical: 10),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(bottom: 80)),
                  logo(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 150),
                    child: logoList(),
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
          return imageSlider(path, index);
        },
      ),
      Align(alignment: Alignment.bottomCenter, child: indicator())
    ]);
  }

  Widget imageSlider(path, index) => Container(
        width: double.infinity,
        height: 240,
        color: Colors.transparent,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
      );

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
  return TextButton(
    onPressed: () {},
    style: ButtonStyle(
      overlayColor:
          MaterialStateColor.resolveWith((states) => Colors.transparent),
    ),
    child: Text(
      title,
      style: const TextStyle(
          color: black,
          fontFamily: 'Judson',
          fontWeight: FontWeight.w700,
          fontSize: 25),
    ),
  );
}

Widget logo() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 220,
        child: Image.asset('images/logo.png'),
      ),
      const Padding(padding: EdgeInsets.only(bottom: 10)),
      const Text(
        'DDJ project',
        style: TextStyle(
            fontFamily: 'Judson',
            fontWeight: FontWeight.w700,
            fontSize: 40,
            color: red),
      ),
    ],
  );
}

Widget logoList() {
  return GridView.builder(
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
