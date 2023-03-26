import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 40,
              ),
              Text(
                "Introduction",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 0),
                child: Text(
                  "The Time Machine is a post-apocalyptic science fiction novella by H. G. Wells, published in 1895. The work is generally credited with the popularization of the concept of time travel by using a vehicle or device to travel purposely and selectively forward or backward through time. The term \" time machine \" coined by Wells, is now almost universally used to refer to such a vehicle or device.",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Image(image: AssetImage("lib/booky.jpg")),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9),
                child: Text(
                  "In his 1931 preface to the book, Wells wrote that The Time Machine seemed \"a very undergraduate performance to its now mature writer, as he looks over it once more, though he states that \"the writer feels no remorse for this youthful effort...",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "SUMMARY",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                child: Text(
                  "Wells advanced his social and political ideas in this narrative of a nameless Time Traveller who is hurtled into the year 802,701 by his elaborate ivory, crystal, and brass contraption. The world he finds is peopled by two races: the decadent Eloi, fluttery and useless, are dependent for food, clothing, and shelter on the simian subterranean Morlocks, who prey on them. The two races—whose names are borrowed from the biblical Eli and Moloch—symbolize Wells’s vision of the eventual result of unchecked capitalism: a neurasthenic upper class that would eventually be devoured by a proletariat driven to the depths.",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.none,),
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ));
  }
}
