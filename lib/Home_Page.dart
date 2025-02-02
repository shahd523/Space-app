import 'package:assign3_flutter/DetailsScreen.dart';
import 'package:assign3_flutter/planet.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  int index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 190.0,
          flexibleSpace: Stack(children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/homepage.png"),
                    fit: BoxFit.cover),
                gradient: LinearGradient(
                    colors: [Color(0xff0E0E0E00), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Which planet\n would you like to explore?",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )),
          ]),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: pageController,
                  itemCount: Planet.planets.length,
                  onPageChanged: (value) {
                    index = value;
                    setState(() {

                    });
                  },
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(Planet.planets[index].image),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        pageController.previousPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInSine);

                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffEE403D),
                          shape: const CircleBorder())),
                  Expanded(
                      child: Text(Planet.planets[index].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center)),
                  ElevatedButton(
                      onPressed: () {
                        pageController.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInSine);
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffEE403D),
                          shape: const CircleBorder()))
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, DetailsScreen.routeName,
                          arguments: Planet.planets[index]);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore ${Planet.planets[index].name}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFFFFF)),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEE403D),
                        minimumSize: Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Color(0xffEE403D)))),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
/* CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber
                      ),
                      child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          ),*/
