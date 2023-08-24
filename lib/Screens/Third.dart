import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:newsapp/screens/screen1.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 217, 81, 63),
          onPressed: () {},
          child: SvgPicture.asset("assets/fav.svg")),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.49,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/news1.png",
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: SvgPicture.asset("assets/backnav.svg"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 5),
            height: MediaQuery.of(context).size.height * 0.55,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                child: Column(children: [
                  RichText(
                      text: const TextSpan(
                          text: "LONDON ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text:
                                "— Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said. ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ])),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      "Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward 20,000, only to sink as low as 3,122 a year later.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      " Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                ]),
              ),
            ),
          ),
          Positioned(
              top: 280,
              child: Opacity(
                  opacity: 0.8,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 160,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 214, 213, 213),
                        borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Sunday, 9 May 2021\n\n',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'NUnito'),
                                children: [
                                  TextSpan(
                                    text:
                                        'Crypto investors should be prepared to lose all their money, BOE governor says\n\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'RobotoSlab'),
                                  ),
                                  TextSpan(
                                    text: 'Published by Ryan Browne',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ))) ////
        ],
      ),
    );
  }
}