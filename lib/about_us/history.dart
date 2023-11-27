import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../utils/colors.dart';
import '../home.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

final historyImageList = {
  "images/향화정1.png",
  "images/향화정2.png",
  "images/올리브1.png",
  "images/올리브2.png",
  "images/황남샌드1.png",
  "images/황남샌드2.png",
  "images/황남우엉김밥1.png",
  "images/황남우엉김밥2.png",
  "images/약과방1.png",
  "images/약과방2.png",
  "images/고도리1.png",
  "images/고도리2.png",
  "images/두더지강정1.png",
  "images/두더지강정2.png",
};

class _HistoryPageState extends State<HistoryPage> {
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
                    '연혁',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        fontSize: 48),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  const Text(
                    '우리가 걸어온 길, 이제는 여러분과 함께 걷기를 원합니다.',
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 60)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 380,
                        child: showHistoryImage(),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 80)),
                      SizedBox(
                        width: 350,
                        child: Image.asset('images/연혁.png'),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget showHistoryImage() {
    return CarouselSlider.builder(
      options: CarouselOptions(
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: const Duration(seconds: 2),
        aspectRatio: 3 / 4,
        onPageChanged: (index, reason) => setState(() {
          activeIndex = index;
        }),
      ),
      itemCount: imageList.length,
      itemBuilder: (context, index, realIndex) {
        final path = historyImageList.elementAt(index);
        return Image.asset(
          path,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
