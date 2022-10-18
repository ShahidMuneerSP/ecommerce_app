
import 'package:ecommerce_app/RegisterPage.dart';
import 'package:ecommerce_app/const.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

// ignore: must_be_immutable
class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:     const Color.fromARGB(255, 212, 210, 210),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Sign In",
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ));
                    },
                    child: const Text("Sign Up!",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),)),)
              ],
            ),
            KHight20,
            TextFormField(
              autofocus: false,
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "Email*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              keyboardType: TextInputType.emailAddress,
            ),
            KHight20,
            TextFormField(
              obscureText: true,
              autofocus: false,
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Password*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              keyboardType: TextInputType.emailAddress,
            ),
            KHight20,
            TextButton(
                onPressed: () {}, child: const Text("Forgot your Password?",style: TextStyle(
                  color:  Color(0xFF4C53A5,),
                  fontWeight: FontWeight.bold
                ),)),
            KHight20,
            SizedBox(
              height: 40,
              width: 390,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                         const Color(0xFF4C53A5))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
