import 'package:final_project/wide/voucher.dart';
import 'package:final_project/wide/wallet.dart';
import 'package:flutter/material.dart';

class Bills extends StatelessWidget {
  const Bills({super.key});

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
                              child: Text('Add voucher code >', style: TextStyle(color: Colors.amber,),),
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
                              child: Text('Pay Here'),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WalletScreen()),
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
                "Your Bills",
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ),
        ),
      ),
      body:
              const Image(
                image: AssetImage('assets/img21.jpg'),
              ),
        
    );
  }
}