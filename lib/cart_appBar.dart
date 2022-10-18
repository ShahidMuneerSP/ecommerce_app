
// ignore_for_file: file_names

import 'package:ecommerce_app/const.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
  color: Colors.white,
  padding: const EdgeInsets.all(25),
  child:  Row(
    children: [
      InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.arrow_back,size: 30,color: Color(0xFF4C53A5),),
      ),
       KWidth20,
          const Text(
            "Cart",
            style: TextStyle(
                color: Color(0xFF4C53A5),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(Icons.more_vert,size: 30,color: Color(0xFF4C53A5))
    ],
  ),
    );
  }
}