import 'package:badges/badges.dart';
import 'package:ecommerce_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeactivateAccountPage extends StatelessWidget {
  const DeactivateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 210, 210),
      body: ListView(children: [
        const DeactivateAccountAppBar(),
        Container(
          height: 280,
          width: 393,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(hintText: "Email ID"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(hintText: "Mobile Number"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(hintText: "Password"),
                ),
              ),
              KHight,
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "CONFIRM DEACTIVATION",
                        style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ),
              )
            ],
          ),
        ),
        KHight,
        Container(
          height: 300,
          width: 393,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              KHight,
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("When you deactivate the account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              )
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("We will miss you.\nYou wont be able to access your Wish list.\nYou will not get updates about the latest offers & discounts\nYou will have to fill your details while checking out over and over again.\nYou won't be able to check your past orders.",style: TextStyle(
                  color:Color.fromARGB(255, 17, 1, 1)
                ),),
              )
            ],
          ),
        )
      ]),
    );
  }
}

class DeactivateAccountAppBar extends StatelessWidget {
  const DeactivateAccountAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 390,
      color: const Color(0xFF4C53A5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            KWidth,
            const Text(
              "Deactivate Account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            KWidth,
            Badge(
              badgeColor: Colors.red,
              badgeContent: const Text(
                "1",
                style: TextStyle(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  CupertinoIcons.cart,
                  color: Colors.white,
                ),
              ),
            ),
            KWidth,
          ],
        ),
      ),
    );
  }
}
