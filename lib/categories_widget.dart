import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int  i=1;i<5;i++)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                      height: 50,
                      width: 60,
                      child: Image.asset("assets/$i.png.jpg")),
                ),
                 const Text(
                  "Watches",
                  style: TextStyle(
                      color: Color(0xFF4C53A5), fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
