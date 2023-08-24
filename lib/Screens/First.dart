//import 'package:News_App/Data/Models/get_news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/home.svg"),
                          const Text(
                            'home',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 217, 81, 63),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/fav2.svg"),
                          const Text(
                            'favorite',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 183, 183, 182)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 183, 183, 182),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/profile.svg"),
                          const Text(
                            'profile',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 183, 183, 182)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  const SizedBox(
                    height: 37,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 5),

                              suffixIcon: const Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 107, 105, 105),
                              ),
                              hintText: "  Dogecoin to the Moon...",
                              hintStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontFamily: 'Nunito'),

                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 178, 177, 183)),
                              ),
                              // border: ,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 201, 195, 195)),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              // border:
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 217, 81, 63)),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          "assets/Group 38 (2).svg",
                          height: 16,
                          width: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest News",
                          style:
                              TextStyle(fontFamily: 'RobotoSlab', fontSize: 18),
                        ),
                        Row(
                          children: [
                            Text(
                              "see all",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  color: Colors.blue),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 15,
                              color: Colors.blue,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(10)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(children: [
                            Image.asset(
                              "assets/news1.png",
                              width: 321,
                              height: 240,
                              fit: BoxFit.cover,
                            ),
                            const Positioned(
                                top: 80,
                                left: 20,
                                child: Text("by Ryan Browne",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Nunito',
                                    ))),
                            const Positioned(
                              top: 95,
                              left: 20,
                              right: 20,
                              child: Text(
                                "Crypto investors should be prepared to lose all their money, BOE governor says",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'RobotoSlab',
                                    color: Colors.white),
                              ),
                            ),
                            const Positioned(
                              top: 200,
                              left: 20,
                              right: 20,
                              child: Text(
                                "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              "assets/news.png",
                              width: 400,
                              height: 224,
                            ),
                          ),
                          const Positioned(
                            top: 80,
                            left: 20,
                            right: 20,
                            child: Text("by Ryan Browne",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Nunito',
                                )),
                          ),
                          const Positioned(
                            top: 95,
                            left: 20,
                            right: 20,
                            child: Text(
                              "Asia-Pacific markets trade broadly higher, oil prices climb",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'RobotoSlab',
                                  color: Colors.white),
                            ),
                          ),
                          const Positioned(
                            top: 180,
                            left: 20,
                            right: 20,
                            child: Text(
                              "Stock markets in Asia-Pacific were broadly higher on Monday following “a big miss” in the April U.S. jobs report, while oil futures advanced.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          )
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(10)),
                        OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 217, 81, 63)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: Color(0xFFF0F1FA)),
                                borderRadius: BorderRadius.circular(30),
                              )),
                            ),
                            child: const Text(
                              "Healthy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Nunito'),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 255, 255, 255)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: Color(0xFFF0F1FA)),
                                borderRadius: BorderRadius.circular(30),
                              )),
                            ),
                            child: const Text(
                              "Technology",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Nunito'),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 255, 255, 255)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: Color(0xFFF0F1FA)),
                                borderRadius: BorderRadius.circular(30),
                              )),
                            ),
                            child: const Text(
                              "Finance",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Nunito'),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          child: OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 255, 255, 255)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Color(0xFFF0F1FA)),
                                  borderRadius: BorderRadius.circular(30),
                                )),
                              ),
                              child: const Text(
                                "Arts",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Nunito'),
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 255, 255, 255)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                side:
                                    const BorderSide(color: Color(0xFFF0F1FA)),
                                borderRadius: BorderRadius.circular(30),
                              )),
                            ),
                            child: const Text(
                              "Sports",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Nunito'),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.all(10)),
                        Stack(children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/pic1.jpg",
                                fit: BoxFit.cover,
                                height: 128,
                                width: 345,
                              )),
                          const Positioned(
                            top: 10,
                            left: 20,
                            right: 20,
                            child: Text(
                              "5 things to know about the 'conundrum' of lupus",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                          const Positioned(
                              top: 100,
                              left: 20,
                              child: Text(
                                "Matt Villano",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: 'Nunito'),
                              )),
                          const Positioned(
                            top: 100,
                            left: 200,
                            child: Text(
                              "Sunday, 9 May 2021",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Nunito'),
                            ),
                          )
                        ]),
                      ],
                    ),
                  ),
                  Stack(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/pic2.jpg",
                          fit: BoxFit.cover,
                          height: 128,
                          width: 345,
                        )),
                    const Positioned(
                      top: 10,
                      left: 20,
                      right: 20,
                      child: Text(
                        "4 ways families can ease anxiety together",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'RobotoSlab'),
                      ),
                    ),
                    const Positioned(
                        top: 100,
                        left: 20,
                        child: Text(
                          "Zain Korsgaard",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Nunito'),
                        )),
                    const Positioned(
                      top: 100,
                      left: 200,
                      child: Text(
                        "Sunday, 9 May 2021",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Nunito'),
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/pic3.png",
                            fit: BoxFit.cover,
                            height: 128,
                            width: 345,
                          )),
                      const Positioned(
                        top: 10,
                        left: 20,
                        right: 20,
                        child: Text(
                          "What to do if you're planning or attending a wedding during the pandemic",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'RobotoSlab'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
