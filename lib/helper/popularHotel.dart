import 'package:flutter/material.dart';

class PopularHotel extends StatefulWidget {
  final String im;
  PopularHotel({super.key, required this.im});

  @override
  State<PopularHotel> createState() => _PopularHotelState();
}

class _PopularHotelState extends State<PopularHotel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                widget.im,
              ),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$488/night",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
