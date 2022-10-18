


import 'package:ecommerce_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'items_appbar.dart';

class ItemsPage extends StatelessWidget {
    const ItemsPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 210, 210),
      body: ListView(children: [
        const ItemsAppBar(),
        Container(
          height: 280,
          width: 370,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(170, 40),
                  bottomRight: Radius.elliptical(170, 40))),
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Image.asset("assets/2.png.jpg"),
          ),
        ),
        KHight,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Nivia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF4C53A5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Running Shoes For Men",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.all(5),
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star,
                          color: Color(0xFF4C53A5),
                        );
                      },
                      onRatingUpdate: (index) {}),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]),
                      child: const Icon(
                        Icons.add_rounded,
                        color: Color(0xFF4C53A5),
                      )),
                  KWidth,
                  const Text(
                    "01",
                    style: TextStyle(
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  KWidth,
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ]),
                    child: const Icon(
                      CupertinoIcons.minus,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                  KWidth,
                ],
              ),
            ),
            Container(
              height: 250,
              width: 390,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KHight,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          "Size- UK/India",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFF4C53A5)),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.table_chart,
                          color: Colors.grey[700],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Size Chart",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  KHight,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        KWidth,
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: const Center(
                              child: Text("5",
                                  style: TextStyle(
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                        ),
                        KWidth20,
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: const Center(
                              child: Text("6",
                                  style: TextStyle(
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                        ),
                        KWidth20,
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: const Center(
                              child: Text("7",
                                  style: TextStyle(
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                        ),
                        KWidth20,
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: const Center(
                              child: Text("8",
                                  style: TextStyle(
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                        ),
                      ],
                    ),
                  ),
                  KHight20,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        KWidth,
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: const Center(
                              child: Text("9",
                                  style: TextStyle(
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                        ),
                        KWidth20,
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: const Center(
                              child: Text("10",
                                  style: TextStyle(
                                      color: Color(0xFF4C53A5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                        ),
                      ],
                    ),
                  ),
                  KHight,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.policy,
                            color: Colors.grey,
                          ),
                          Text(
                              "Don't worry ,we have a 10 - day return policy on \n this Item."),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
      bottomSheet: Container(
        height: 50,
        width: 393,
        color: Colors.white,
        child: Row(
          children: [
            Container(
                height: 50,
                width: 196,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10)
                ]),
                child: const Center(
                    child: Text(
                  "ADD TO CART",
                  style: TextStyle(
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ))),
            Container(
              height: 50,
              width: 196.5,
              decoration: BoxDecoration( color: const Color.fromARGB(255, 138, 18, 9), boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10)
                ]),
             
              child: const Center(
                  child: Text(
                "BUY NOW",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
