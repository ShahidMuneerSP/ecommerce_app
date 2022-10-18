



import 'package:ecommerce_app/const.dart';
import 'package:flutter/material.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 390,
        color: const Color(0xFF4C53A5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children:  const [
              Text("My Account",style: TextStyle(color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),),
              Spacer(),
              Icon(Icons.search,color: Colors.white,),
              KWidth,
              Icon(Icons.camera_alt,color: Colors.white,),
              KWidth,
            ],

          ),
        ),
    );
  }
}