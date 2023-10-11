import 'package:final_project/wide/home.page.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class CustomMore extends StatefulWidget {
  const CustomMore({super.key});

  @override
  State<CustomMore> createState() => _CustomMoreState();
}

class _CustomMoreState extends State<CustomMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfFE9EBEA),
      drawer: const CustomDrawer(),
       body: ListView(
        children: [
          Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                  left: 10,
                  right: 5,),
                        child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                       
                        ElevatedButton(
                        child: const Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 15,
                          child: Text('Back'),
                        ),
                                          ),
                                          onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MainHomePage()),
                        );
                                          },
                                        ),
                    ],
       )),
       
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
                              image: AssetImage('assets/img24.jpg'),
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
                                  Text(
                                      'Essential Ladies Dinner Dress',
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
                              image: AssetImage('assets/img25.jpg'),
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
                                    'Sweater',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                      'Essential Ladies Sweater',
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
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 18, right: 12),
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
                              image: AssetImage('assets/img26.jpg'),
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
                                    'Tank Top',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                      'Essential Ladies Tank Top',
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
                              height: 178,
                              width: 200,
                              image: AssetImage('assets/img27.jpg'),
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
                                    'Sweatpant',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                      'Essential Men Sweatpant',
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
                                        '\$15.00',
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
                              image: AssetImage('assets/img28.jpg'),
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
                                      'Essential Men Short Sleeve Shirt',
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
                              image: AssetImage('assets/img29.jpg'),
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
                                    'Boxer',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                      'Essential Men Boxer Short',
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
          ],
    ),
    ]));
  }
}