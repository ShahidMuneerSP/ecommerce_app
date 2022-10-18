import 'package:ecommerce_app/const.dart';
import 'package:ecommerce_app/user_appbar.dart';
import 'package:flutter/material.dart';

import 'edit_profile_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 210, 210),
      body: ListView(
        children: [
          const UserAppBar(),
          KHight,
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hey! User",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          KHight,
          Container(
            height: 280,
            width: 390,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KHight,
                  const Text(
                    "Account Settings",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  KHight20,
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        color: Color(0xFF4C53A5),
                      ),
                      KWidth20,
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EditProfilePage(),
                          ));
                        },
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                  KHight20,
                  Row(
                    children: const [
                      Icon(
                        Icons.wallet,
                        color: Color(0xFF4C53A5),
                      ),
                      KWidth20,
                      Text(
                        "Saved Cards & Wallet",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  KHight20,
                  Row(
                    children: const [
                      Icon(
                        Icons.location_history,
                        color: Color(0xFF4C53A5),
                      ),
                      KWidth20,
                      Text(
                        "Saved Addresses",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  KHight20,
                  Row(
                    children: const [
                      Icon(
                        Icons.language,
                        color: Color(0xFF4C53A5),
                      ),
                      KWidth20,
                      Text(
                        "Select Language",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  KHight20,
                  Row(
                    children: const [
                      Icon(
                        Icons.notifications,
                        color: Color(0xFF4C53A5),
                      ),
                      KWidth20,
                      Text(
                        "Notification Settings",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward)
                    ],
                  )
                ],
              ),
            ),
          ),
          KHight,
          Container(
            height: 100,
            width: 390,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KHight,
                  const Text(
                    "Earn With New Trend",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  KHight20,
                  Row(children: const [
                    Icon(
                      Icons.announcement,
                      color: Color(0xFF4C53A5),
                    ),
                    KWidth20,
                    Text(
                      "Refer & Earn",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward)
                  ])
                ],
              ),
            ),
          ),
          KHight,
          Container(
            height: 100,
            width: 390,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KHight,
                  const Text(
                    "Feedback & Information",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  KHight20,
                  Row(children: const [
                    Icon(
                      Icons.policy,
                      color: Color(0xFF4C53A5),
                    ),
                    KWidth20,
                    Text(
                      "Terms,Policies and Licenses",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward)
                  ])
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 40,
              width: 300,
              color: Colors.white,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
