import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'DDJ project',
                  style: TextStyle(
                      fontFamily: 'Judson',
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: red),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                      ),
                      child: const Text(
                        'About us',
                        style: TextStyle(
                            color: black,
                            fontFamily: 'Judson',
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 20)),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                      ),
                      child: const Text(
                        'Our Story',
                        style: TextStyle(
                            color: black,
                            fontFamily: 'Judson',
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 20)),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                      ),
                      child: const Text(
                        'Career',
                        style: TextStyle(
                            color: black,
                            fontFamily: 'Judson',
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 20)),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                      ),
                      child: const Text(
                        'Contact',
                        style: TextStyle(
                            color: black,
                            fontFamily: 'Judson',
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
