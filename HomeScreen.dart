import 'package:book_store/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height;
    var width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(60),
                ),
                color: Colors.teal,
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal.withOpacity(0.5),
                    offset: const Offset(-10.0, 0.0),
                    blurRadius: 20,
                    spreadRadius: 4.0,
                  ),
                ]),
            child: Stack(
              children: [
                Positioned(
                  top: 75,
                  left: 0,
                  child: Container(
                    height: 80,
                    width: 260,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    top: 97,
                    left: 20,
                    child: Text(
                      "The Book Store",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                    top: 25,
                    left: 35,
                    child: Material(
                      child: Container(
                        height: 180,
                        width: 380,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            )
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: 20,
                    left: 30,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenTwo()));
                        },
                        child: Container(
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('lib/bookname.jpg')),
                          ),
                        ),
                      ),
                    )),
                Positioned(
                  top: 55,
                  left: 200,
                  child: Container(
                    height: 150,
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Time Machine",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.teal),
                        ),
                        Text(
                          "              ~H.G Wells",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Text(
                          "\"brings about closed  timelike curves\"",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 120,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child: const Center(
                    child: Text(
                  "Related books...",
                  style: TextStyle(fontWeight: FontWeight.w800),
                )),
              ),
            ],
          ),
          Expanded(
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 25),
                    height: 200,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(80.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.teal.withOpacity(0.3),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20,
                              spreadRadius: 4.0,
                            ),
                          ]),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top: 50,
                        bottom: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "In Search of Lost Time",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "                                         ~Marcel Proust",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 25),
                    height: 200,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(80.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.teal.withOpacity(0.3),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20,
                              spreadRadius: 4.0,
                            ),
                          ]),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top: 50,
                        bottom: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Sindh Namo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "             ~Amar Jaleel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 25),
                    height: 200,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(80.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.teal.withOpacity(0.3),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20,
                              spreadRadius: 4.0,
                            ),
                          ]),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top: 50,
                        bottom: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "The Essential Rumi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "                                              ~Rumi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 25),
                    height: 200,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(80.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.teal.withOpacity(0.3),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20,
                              spreadRadius: 4.0,
                            ),
                          ]),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top: 50,
                        bottom: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Money: A Suicide Note",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "                                           ~Martin Amis",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
