import 'package:badges/badges.dart';
import 'package:ecommerce_app/const.dart';
import 'package:ecommerce_app/set_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'deactivate_account_page.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            height: 100,
            width: 390,
            color: const Color(0xFF4C53A5),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  KWidth,
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
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
          )),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 393,
            color: const Color(0xFF4C53A5),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: CircleAvatar(
                backgroundColor: Colors.yellow[600],
                child: Container(
                  height: 80,
                  width: 62,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/user.png"))),
                ),
              ),
            ),
          ),
          Container(
            height: 520,
            width: 393,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(hintText: "First Name"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(hintText: "Last Name"),
                  ),
                ),
                KHight,
                Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "SUBMIT",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5)),
                        ))),
                KHight,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration:
                        const InputDecoration(hintText: "Mobile Number"),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                        const InputDecoration(hintText: "Email ID"),
                  ),
                ),
                KHight,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 393,
                    color:  const Color(0xFF4C53A5),
                    child: TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SetPasswordPage(),));
                    }, 
                    child: const Text("Set Password",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      
                    ),)),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    height: 50,
                    width: 393,
                    color:  const Color(0xFF4C53A5) ,
                    child: TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DeactivateAccountPage(),));
                    }, 
                    child: const Text("Deactivate Account",style: TextStyle(
                      color: Colors.white,
                         fontWeight: FontWeight.bold,
                    ),)),
                ),
                 ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
