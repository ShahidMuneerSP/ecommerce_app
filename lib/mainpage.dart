import 'package:flutter/material.dart';


import 'bottom_nav.dart';
import 'cartpage.dart';
import 'homepage.dart';
import 'userpage.dart';

class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);
final _pages = [
const HomePage(),
const CartPage(),
const UserPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable:indexValueNotifier,
         builder: (BuildContext context, int index, Widget? child) {  
          return _pages[index];
         },

      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}