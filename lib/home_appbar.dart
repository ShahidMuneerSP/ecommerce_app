
import 'package:badges/badges.dart';
import 'package:ecommerce_app/const.dart';
import 'package:flutter/material.dart';

import 'RegisterPage.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterPage(),));
            },
            child: const Icon(
              Icons.person_pin,
              color: Color(0xFF4C53A5),
              size: 30,
            ),
          ),
          KWidth20,
          const Text(
            "New Trend",
            style: TextStyle(
                color: Color(0xFF4C53A5),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Badge(
            badgeColor: Colors.red,
            badgeContent:  const Text("2",style: TextStyle(color: Colors.white),),
            child: InkWell(
              
                onTap: () {},
                child: const Icon(Icons.shopping_bag_outlined,
                    size: 20, color: Color(0xFF4C53A5))),
          ),
        ],
      ),
    );
  }
}
