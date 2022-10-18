import 'package:ecommerce_app/const.dart';
import 'package:flutter/material.dart';
import 'bestselling_widget.dart';
import 'categories_widget.dart';
import 'home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            height: 650,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 210, 210),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here..."),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.camera_alt, color: Color(0xFF4C53A5))
                    ],
                  ),
                ),
                KHight,
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                KHight,
                const CategoriesWidget(),
                KHight,
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                KHight,
                Expanded(
                  child: GridView.count(
                      childAspectRatio: 0.68,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: [
                        for (int i = 0; i < 6; i++)
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: BestSellingWidget()),
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
