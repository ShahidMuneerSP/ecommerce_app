// ignore_for_file: file_names
import 'package:ecommerce_app/const.dart';
import 'package:ecommerce_app/signin_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 210, 210),
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
          "Sign Up",
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ));
                      },
                      child: const Text(
                        "Sign In!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5)),
                      ))
                ],
              ),
              KHight20,
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autofocus: false,
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Username*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.name,
              ),
              KHight20,
              TextFormField(
                autofocus: false,
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "email*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.emailAddress,
              ),
              KHight20,
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                    hintText: "Phone No*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.phone,
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
                keyboardType: TextInputType.visiblePassword,
              ),
              KHight20,
              TextFormField(
                obscureText: true,
                autofocus: false,
                controller: confirmPassController,
                decoration: InputDecoration(
                    hintText: "Confirm Password*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.visiblePassword,
              ),
              KHight20,
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot your Password?",
                    style: TextStyle(color: Color(0xFF4C53A5)),
                  )),
              KHight20,
              SizedBox(
                height: 40,
                width: 390,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF4C53A5))),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
