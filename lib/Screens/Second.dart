import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5),

                    suffixIcon: const Icon(
                      Icons.close,
                      color: Color.fromARGB(255, 107, 105, 105),
                    ),
                    hintText: "      COVID New Variant",
                    hintStyle: const TextStyle(
                        fontSize: 12, color: Colors.grey, fontFamily: 'Nunito'),

                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 178, 177, 183)),
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                OutlinedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(14))),
                          context: context,
                          builder: (context) => Container(
                                height: 315,
                                width: 375,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 10, left: 20),
                                          child: Text(
                                            "Filter",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, bottom: 10, right: 10),
                                          child: TextButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.white),
                                                  shape: MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          side: const BorderSide(
                                                              color: Colors
                                                                  .black)))),
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      "assets/reset.svg"),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Text(
                                                    "Reset",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sort By",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          OutlinedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color.fromARGB(
                                                            255,
                                                            255,
                                                            255,
                                                            255)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      color: Color(0xFFF0F1FA)),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                )),
                                              ),
                                              child: const Text(
                                                "Recommended",
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
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color.fromARGB(
                                                            255,
                                                            255,
                                                            255,
                                                            255)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      color: Color(0xFFF0F1FA)),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                )),
                                              ),
                                              child: const Text(
                                                "Latest",
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
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color.fromARGB(
                                                            255,
                                                            255,
                                                            255,
                                                            255)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      color: Color(0xFFF0F1FA)),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                )),
                                              ),
                                              child: const Text(
                                                "Most Viewed",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Nunito'),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: OutlinedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color.fromARGB(
                                                            255,
                                                            255,
                                                            255,
                                                            255)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      color: Color(0xFFF0F1FA)),
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                )),
                                              ),
                                              child: const Text(
                                                "channel",
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
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color.fromARGB(
                                                          255, 255, 255, 255)),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    color: Color(0xFFF0F1FA)),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                            ),
                                            child: const Text(
                                              "Following",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Nunito'),
                                            )),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color.fromARGB(
                                            255, 217, 81, 63),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 140, vertical: 13),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                      child: const Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 217, 81, 63)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xFFF0F1FA)),
                        borderRadius: BorderRadius.circular(30),
                      )),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/Vector.svg"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Filter",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Nunito'),
                        ),
                      ],
                    )),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xFFF0F1FA)),
                        borderRadius: BorderRadius.circular(30),
                      )),
                    ),
                    child: const Text(
                      "Healthy",
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xFFF0F1FA)),
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
                SizedBox(
                  child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xFFF0F1FA)),
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
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
              text: const TextSpan(
                  text: "About 11,130,000 results for",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  children: [
                TextSpan(
                    text: " COVID New Variant.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ])),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                Stack(children: [
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
                  const Positioned(
                      top: 100,
                      left: 20,
                      child: Text(
                        "Kristen Rogers",
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
                  height: 20,
                ),
                Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/doc.jpg",
                        fit: BoxFit.cover,
                        height: 128,
                        width: 345,
                      )),
                  const Positioned(
                    top: 10,
                    left: 20,
                    right: 20,
                    child: Text(
                      "Doctors on digital front lines help fight India’s Covid surge",
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
                        "Shepard Smith",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Nunito'),
                      )),
                  const Positioned(
                    top: 100,
                    left: 200,
                    child: Text(
                      "Friday, 7 May 2021",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: 'Nunito'),
                    ),
                  )
                ]),
                const SizedBox(
                  height: 20,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}