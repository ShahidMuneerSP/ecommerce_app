import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexValueNotifier = ValueNotifier(0);
class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexValueNotifier,
      builder: (BuildContext context, int newIndex, Widget? child) { 
         return BottomNavigationBar(
             elevation: 0,
              selectedItemColor: const Color(0xFF4C53A5),
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              currentIndex: newIndex,
              onTap: (index){
                indexValueNotifier.value = index;
              },
               items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30),label: ""),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart, size: 30),label: ""),
                      BottomNavigationBarItem(icon: Icon(Icons.person, size: 30),label: "")
        ],
         );

   } );
  }
       
      
    
  
}