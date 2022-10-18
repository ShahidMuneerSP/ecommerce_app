import 'package:flutter/material.dart';

import 'Items_page.dart';

class BestSellingWidget extends StatelessWidget {
  const BestSellingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ItemsPage()
        ));
      },
      child: Container(
        height: 260,
        width: 175,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "-50%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xFF4C53A5),
                  ),
                )
              ],
            ),
            Container(
              height: 100,
              width: 176,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage("assets/2.png.jpg"))),
            ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child:  Text("Nivia",style: TextStyle(
                  fontSize: 20,
                   color: Color(0xFF4C53A5),
                  fontWeight: FontWeight.bold),),
              ),
                const Padding(
                padding: EdgeInsets.all(5.0),
                child:  Text("unisex-adult Super \n Court Shoes ",style: TextStyle(
                   color: Color(0xFF4C53A5),
                   fontSize: 16
                 ),),
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: const [
                  Icon(Icons.currency_rupee),
                  Text("1399",style: TextStyle(
                    fontSize: 24
                  ),)
                ],
              )
          ],
        ),
      ),
    );
  }
}