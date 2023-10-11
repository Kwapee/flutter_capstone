import 'package:final_project/wide/bill.dart';
import'package:flutter/material.dart';

import 'voucher.dart';

class CartHome extends StatelessWidget {
  static String routeName = "/cart";

  const CartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
        child: Container(
          height: 174,
          decoration:  BoxDecoration(color: Colors.white,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), 
          boxShadow: [BoxShadow(offset: const Offset(0, -15),
          blurRadius: 20,
          color: const Color(0xFFDADADA).withOpacity(0.15),
          )]),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/img6.jpg")
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:120.0),
                    child: OutlinedButton(
                          child: const Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              height: 15,
                              child: Text('Add voucher code >', style: TextStyle(color : Colors.black),),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VoucherPage()),
                            );
                          },
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text.rich(
                    TextSpan(
                      text: "Total",
                    children: [
                      TextSpan(
                      text:'\$100.00',
                      style: TextStyle(fontSize: 16, color: Colors.black , fontWeight: FontWeight.bold)
                    )]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:120.0),
                    child: ElevatedButton(
                          child: const Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              height: 15,
                              child: Text('Check Out'),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Bills()),
                            );
                          },
                        ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 50.0),
          child: Center(
            child: Column(children: [
              Text(
                "Your Cart",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "4 items",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ]),
          ),
        ),
      ),
      body: ListView(
      children: [
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 88,
                  child: AspectRatio(aspectRatio: 0.88,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(color: const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Image(image: AssetImage("assets/img16.jpg"),),
                    ),
                  ),),
                ),
                const SizedBox(width: 20,),
                const Padding(
                  padding: EdgeInsets.only(top:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Essential Long-Sleeve Wine Hoodie", style: TextStyle(fontSize: 16, color: Colors.black),
                     maxLines: 2,
                     ),
                      SizedBox(height: 10,),
                     Text.rich(TextSpan(
                      text: "\$30.00", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)
                     ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 88,
                  child: AspectRatio(aspectRatio: 0.88,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(color: const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Image(image: AssetImage("assets/img14.jpg"),),
                    ),
                  ),),
                ),
                const SizedBox(width: 20,),
                const Padding(
                  padding: EdgeInsets.only(top:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Essential Men`s Short-\nSleeve Green Lacoste", style: TextStyle(fontSize: 16, color: Colors.black),
                     maxLines: 2,
                     ),
                      SizedBox(height: 10,),
                     Text.rich(TextSpan(
                      text: "\$20.00", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)
                     ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 88,
                  child: AspectRatio(aspectRatio: 0.88,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(color: const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Image(image: AssetImage("assets/img9.jpg"),),
                    ),
                  ),),
                ),
                const SizedBox(width: 20,),
                const Padding(
                  padding: EdgeInsets.only(top:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Essential Men`s Long-\nSleeve Blue Shirt", style: TextStyle(fontSize: 16, color: Colors.black),
                     maxLines: 2,
                     ),
                      SizedBox(height: 10,),
                     Text.rich(TextSpan(
                      text: "\$25.00", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)
                     ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 88,
                  child: AspectRatio(aspectRatio: 0.88,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(color: const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Image(image: AssetImage("assets/img17.jpg"),),
                    ),
                  ),),
                ),
                const SizedBox(width: 20,),
                const Padding(
                  padding: EdgeInsets.only(top:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Essential Top and Down Polo For Kids", style: TextStyle(fontSize: 16, color: Colors.black),
                     maxLines: 2,
                     ),
                      SizedBox(height: 10,),
                     Text.rich(TextSpan(
                      text: "\$25.00", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)
                     )),
                     
                    ],
                  ),
                ),
                
              ],
            ),
            
          ],
        ),
      ],
      
      )
    );
  }
}
