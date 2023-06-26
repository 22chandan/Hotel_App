import 'package:flutter/material.dart';
import 'package:hotelapp/Details.dart';
import 'package:hotelapp/helper/mycontainer.dart';
import 'package:hotelapp/helper/popularHotel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = -1;

  void _onContainerTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 252, 249, 249),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Row(
                children: [
                  Flexible(
                      child: Text(
                    "Where you wanna go?",
                    // textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.w700, height: 1),
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Color.fromARGB(228, 255, 255, 255),
                    ),
                    child: Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 130,
              padding: EdgeInsets.only(left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyContainer(
                    ic: Icons.hotel_sharp,
                    name: "Hotel",
                    index: 0,
                    selectedIndex: _selectedIndex,
                    onContainerTapped: _onContainerTapped,
                  ),
                  SizedBox(width: 15),
                  MyContainer(
                    ic: Icons.flight,
                    name: "Flight",
                    index: 1,
                    selectedIndex: _selectedIndex,
                    onContainerTapped: _onContainerTapped,
                  ),
                  SizedBox(width: 15),
                  MyContainer(
                      index: 2,
                      selectedIndex: _selectedIndex,
                      onContainerTapped: _onContainerTapped,
                      ic: Icons.location_pin,
                      name: "Place"),
                  SizedBox(width: 15),
                  MyContainer(
                    ic: Icons.food_bank,
                    name: "Food",
                    index: 3,
                    selectedIndex: _selectedIndex,
                    onContainerTapped: _onContainerTapped,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Hotels",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text("see all",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 254, 191, 2)))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 250,
                padding: EdgeInsets.only(left: 20),
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  GestureDetector(
                    child: PopularHotel(
                      im: "assets/Hotel1.jpeg",
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            // ignore: avoid_types_as_parameter_names
                            builder: (BuildContext) => DetailsPage(
                                  im: "assets/Hotel1.jpeg",
                                ))),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: PopularHotel(
                      im: "assets/Hotel2.jpeg",
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            // ignore: avoid_types_as_parameter_names
                            builder: (BuildContext) => DetailsPage(
                                  im: "assets/Hotel2.jpeg",
                                ))),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: PopularHotel(
                      im: "assets/Hotel3.jpeg",
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            // ignore: avoid_types_as_parameter_names
                            builder: (BuildContext) => DetailsPage(
                                  im: "assets/Hotel3.jpeg",
                                ))),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: PopularHotel(
                      im: "assets/Hotel4.jpg",
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            // ignore: avoid_types_as_parameter_names
                            builder: (BuildContext) => DetailsPage(
                                  im: "assets/Hotel4.jpg",
                                ))),
                  ),
                ])),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Hot Deals",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => DetailsPage(
                                  im: "assets/hotel.jpg",
                                )));
                  },
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/hotel.jpg",
                            ),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "25% OFF",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                )),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Santorini",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Text(
                                        "Greece",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$488/night",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Text(
                                              "4.9",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  )),
            ),
          ]),
        ));
  }
}
