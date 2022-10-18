import 'package:ecommerce_app/const.dart';
import 'package:flutter/material.dart';
import 'cart_appBar.dart';
import 'cart_items_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 210, 210),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                for (int i = 0; i < 3; i++)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CartItemsWidget(),
                  ),
                KHight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: const Color(0xFF4C53A5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10)
                            ]),
                        child:
                            const Icon(Icons.add_rounded, color: Colors.white),
                      ),
                    ),
                    const Text(
                      "Add Coupon Code",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF4C53A5),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 375,
          color: Colors.white,
          child: Column(
            children: [
              Row(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Total:",
                    style: TextStyle(
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.currency_rupee,
                        color: Color(0xFF4C53A5),
                      ),
                      Text(
                        "3999",
                        style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: 40,
                width: 390,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF4C53A5))),
                    onPressed: () {},
                    child: const Text(
                      "Check Out",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
