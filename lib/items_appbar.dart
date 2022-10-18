import 'package:ecommerce_app/const.dart';
import 'package:ecommerce_app/homepage.dart';
import 'package:flutter/material.dart';

class ItemsAppBar extends StatelessWidget {
  const ItemsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage(),));
            },
            child:  const Icon(
              Icons.arrow_back,
              color: Color(0xFF4C53A5),
              size: 30,
            ),
          ),
          KWidth20,
          const Text(
            "Product",
            style: TextStyle(
                color: Color(0xFF4C53A5),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          InkWell(
              onTap: () {},
              child: const Icon(Icons.favorite_outline,
                  size: 25, color: Color(0xFF4C53A5))),
        ],
      ),
    );
  }
}
