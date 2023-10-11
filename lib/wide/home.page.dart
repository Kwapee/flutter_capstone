import 'package:final_project/wide/bill.dart';
import 'package:flutter/material.dart';

import '../authentication/pages/Login.dart';
import 'CartScreen.dart';

import 'data.dart';
import 'delivery.dart';
import 'drawer.dart';
import 'firestore_clud.dart';
import 'more.dart';
import 'settings.dart';
import 'top.dart';
import 'voucher.dart';
import 'wallet.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  FirestoreCrud crud = FirestoreCrud();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:  BottomAppBar(
            height: 75,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                                padding: const EdgeInsets.only( left: 10,),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: OutlinedButton(
                                        child: const SizedBox(
                                          child: Icon(
                                            Icons.home_filled,
                                            size: 20,
                                            color: Color(0xff2A977D),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MainHomePage()),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Home',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                )),
                                Padding(
                                padding: const EdgeInsets.only( left: 10,),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: OutlinedButton(
                                        child: const SizedBox(
                                          child: Icon(
                                            Icons.add_card_rounded,
                                            size: 20,
                                            color: Color(0xff2A977D),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const VoucherPage()),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Voucher',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                )),
                          Padding(
                                padding: const EdgeInsets.only( left: 10,),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: OutlinedButton(
                                        child: const SizedBox(
                                          child: Icon(
                                            Icons.wallet,
                                            size: 20,
                                            color: Color(0xff2A977D),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const WalletScreen()),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Wallet',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                )),
                                
                  Padding(
                                padding: const EdgeInsets.only( left: 10, right: 10,),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: OutlinedButton(
                                        child: const SizedBox(
                                          child: Icon(
                                            Icons.settings,
                                            size: 20,
                                            color: Color(0xff2A977D),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SettingPage()),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Settings',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                )),
                  
                ],
              ),
            )),
        backgroundColor: const Color(0xfFE9EBEA),
        drawer: const CustomDrawer(),
        body: ListView(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 35.0,
                  left: 10,
                  right: 5,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        child: const Align(
                        alignment: Alignment.topLeft,
                         child:  SizedBox(
                          child: Icon(
                            Icons.shopping_cart,
                             size: 32,
                             color: Colors.redAccent,
                               ),
                                ),
                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CartHome()),
                                          );
                                        },
                        
                                      ),
                                
                      SizedBox(
                          height: 50,
                          width: 230,
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 23,
                              ),
                              hintText: 'Search..',
                              hintStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                height: 2.8,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        child: const Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 15,
                            child: Text('Login'),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                      ),
                    ]),
              ),
              const SizedBox(
                height: 3,
              ),
              const Image(
                image: AssetImage('assets/img3.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Row(children: [
                  Container(
                      width: 390,
                      height: 150,
                      color: Colors.white,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Padding(
                                padding: const EdgeInsets.only( left:15,),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 53,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: OutlinedButton(
                                        child: const SizedBox(
                                          child: Icon(
                                            Icons.flight,
                                            size: 32,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Delivery()),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    const Text(
                                      'Delivery',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 53,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: OutlinedButton(
                                        child: const SizedBox(
                                          child: Icon(
                                            Icons.receipt_long,
                                            size: 32,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Bills()),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    const Text(
                                      'Bills',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
                                  right: 10.0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 53,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: OutlinedButton(
                                        child: const SizedBox(
                                          child: Icon(
                                            Icons.data_exploration_outlined,
                                            size: 32,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                  const  Data()),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    const Text(
                                      'Data Plan',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
                                  right: 15.0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 53,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: OutlinedButton(
                                        child: const SizedBox(
                                          child: Icon(
                                            Icons.upcoming_outlined,
                                            size: 32,
                                            
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const TopPage()),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 14,
                                    ),
                                    const Text(
                                      'Top Up',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                )),
                          ])),
                ]),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Sale Product',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    OutlinedButton(
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 15,
                          child: Text('See More'),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomMore()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 18, right: 12),
                child: Row(children: [
                  Container(
                      width: 180,
                      color: Colors.white,
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 150,
                              width: 200,
                              image: AssetImage('assets/img9.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                      'Essential Men`s Long-\nSleeve Blue Shirt',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        height: 1,
                                      )),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '4.9 | 2336',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '\$25.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Color(0xff2A9770)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ])),
                  Container(
                      width: 180,
                      color: Colors.white,
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 150,
                              width: 200,
                              image: AssetImage('assets/img14.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lacoste',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                      'Essential Men`s Short-\nSleeve Green Lacoste',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        height: 1,
                                      )),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '5.2 | 2556',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '\$20.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Color(0xff2A9770)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ])),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 18, right: 12),
                child: Row(children: [
                  Container(
                      width: 180,
                      color: Colors.white,
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 165,
                              width: 200,
                              image: AssetImage('assets/img15.png'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dress',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text('Essential Ladies`s Dress',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        height: 1,
                                      )),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '4.8 | 2116',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '\$30.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Color(0xff2A9770)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ])),
                  Container(
                      width: 180,
                      color: Colors.white,
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 150,
                              width: 200,
                              image: AssetImage('assets/img16.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hoodie',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text('Essential Long-Sleeve Wine Hoodie',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        height: 1,
                                      )),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '5.9 | 3443',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '\$35.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Color(0xff2A9770)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ])),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 18, right: 12),
                child: Row(children: [
                  Container(
                      width: 180,
                      color: Colors.white,
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 150,
                              width: 200,
                              image: AssetImage('assets/img17.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Polo Kids',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text('Essential Top and Down Polo For Kids',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        height: 1,
                                      )),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '4.9 | 2336',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '\$20.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Color(0xff2A9770)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ])),
                  Container(
                      width: 180,
                      color: Colors.white,
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              height: 165,
                              width: 200,
                              image: AssetImage('assets/img18.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jeans',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text('Essential Blue Jeans',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        height: 1,
                                      )),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '5.0 | 1331',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '\$18.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Color(0xff2A9770)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ])),
                ]),
              ),
            ])
          ],
        ));
  }
}
