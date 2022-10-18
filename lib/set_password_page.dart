import 'package:badges/badges.dart';
import 'package:ecommerce_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SetPasswordPage extends StatelessWidget {
  const SetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(
      children: [
        const SetPasswordAppBar(),
          Container(
            height: 520,
            width: 393,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(hintText: "Email ID"),
                  ),
                ),
                KHight,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(hintText: "Mobile Number"),
                  ),
                ),
                KHight,
                
               
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration:
                        const InputDecoration(hintText: "New Password"),
                  ),
                ),
                KHight,
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration:
                        const InputDecoration(hintText: "Retype Password"),
                  ),
                ),
                KHight,
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Enter OTP sent to +919048162627",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),),
                ),
                KHight,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30,
                        width: 280,
                        child: TextFormField(
                           keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(hintText: "OTP"),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      color: Colors.white,
                      child: TextButton(onPressed: () {
                        
                      }, child: const Text("Resend",style: TextStyle(
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold),),),

                    )
                  ],
                ),
               KHight,
               Row(
                 children: [
                  KWidth30,
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: TextButton(onPressed: () {
                       
                     }, child: const Text("CANCEL",style: TextStyle(
                      color:  Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                     ),)),
                   ),
                  const Spacer(),
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: TextButton(onPressed: () {
                       
                     }, child: const Text("SAVE",style: TextStyle(
                       color:  Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                     ),)),
                    
                   ),
                    KWidth30,
                 ],
               ),
            
              ],
            ),
          )

      ],
    ),
    );
  }
}

class SetPasswordAppBar  extends StatelessWidget{
  const SetPasswordAppBar({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  return Container(
    height: 50,
    width: 390,
    color:  const Color(0xFF4C53A5),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children:  [
          const Icon(Icons.arrow_back,color: Colors.white,),
          KWidth,
          const Text("Set Password",style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          const Spacer(),
           const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    KWidth,
                    Badge(
                      badgeColor: Colors.red,
                      badgeContent: const Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    KWidth,
        ],
      ),
    ),

  );
  }
}