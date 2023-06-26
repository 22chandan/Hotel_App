import 'package:flutter/material.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';
import 'package:hotelapp/helper/mycontainer.dart';
import 'package:hotelapp/helper/mycontainer1.dart';

class DetailsPage extends StatefulWidget {
  final String im;
  DetailsPage({super.key, required this.im});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _selectedIndex = -1;

  void _onContainerTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: size.height * 0.35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.im), fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_sharp),
                          )),
                      Container(
                        child: Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.share)),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.3,
          left: 0,
          right: 0,
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              child: Container(
                color: Color.fromARGB(255, 252, 249, 249),
                height: size.height * 0.70,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "BaLi Motel\nVung Tau",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            "indonesia",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "(6.8k review)",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "\$580/",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "night",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      decoration: TextDecoration.none),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: Divider(
                        height: 1,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 10),
                      child: ExpandableText(
                        "Featuring 3-star accommodation, FabHotel Silverkey Kalighat is situated in Ballygunge, 1.5 km from Kalighat Kali Temple and 2.9 km from Indian Museum. This 3-star hotel offers a shared kitchen, room service and free WiFi. The hotel has family rooms.All rooms at the hotel are fitted with a seating area, a flat-screen TV with cable channels and a private bathroom with free toiletries and a shower. The units at FabHotel Silverkey Kalighat have air conditioning and a wardrobe.",
                        style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "What we offer",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 100,
                      padding: EdgeInsets.only(left: 20),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          MyContainer1(
                            ic: Icons.hotel_sharp,
                            name: "2 Bed",
                          ),
                          SizedBox(width: 15),
                          MyContainer1(
                            ic: Icons.food_bank_outlined,
                            name: "Dinner",
                          ),
                          SizedBox(width: 15),
                          MyContainer1(
                              ic: Icons.hot_tub_sharp, name: "Hot tub"),
                          SizedBox(width: 15),
                          MyContainer1(
                            ic: Icons.ac_unit_outlined,
                            name: "1 Ac",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hosted by",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("assets/hotel.jpg"))),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: ,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Chandan Kumar",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        "4.9",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text("(1.4K review)")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/massage.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 70,
                        width: size.width * 0.7,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            8)) // Change the background color here
                                    ),
                                onPressed: () {},
                                child: Text(
                                  "Book Now",
                                  style: TextStyle(color: Colors.white),
                                )))),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
