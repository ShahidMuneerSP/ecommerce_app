import 'package:ecommerce_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemsWidget extends StatefulWidget {
  const CartItemsWidget({Key? key}) : super(key: key);

  @override
  State<CartItemsWidget> createState() => _CartItemsWidgetState();
}

class _CartItemsWidgetState extends State<CartItemsWidget> {
  int cartValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 360,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 100,
                width: 130,
                child: Row(
                  children: [
                    Radio(
                        activeColor: const Color(0xFF4C53A5),
                        value: 1,
                        groupValue: cartValue,
                        onChanged: (index) {
                          setState(() {
                            
                          });
                        }),
                    Expanded(child: Image.asset("assets/1.png.jpg"))
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: 190,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Product Title",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFF4C53A5)),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  KHight20,
                  Row(
                    children:[
                      const Icon(
                        Icons.currency_rupee_rounded,
                        color: Color(0xFF4C53A5),
                      ),
                      const Text(
                        "999",
                        style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Container(
                        padding:const EdgeInsets.all(3) ,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10
                            )
                          ]
                        ),

                        child: const Icon(Icons.add_rounded,   color:  Color(0xFF4C53A5),)),
                    KWidth,
                      const Text("01",style: TextStyle(
                        color:   Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),),
                      KWidth,
                        Container(
                        padding:const EdgeInsets.all(3) ,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10
                            )
                          ]
                        ),
                        child:    const Icon(CupertinoIcons.minus , color:  Color(0xFF4C53A5),),),
                    

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
