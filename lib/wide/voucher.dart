
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bill.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  late String 
      // ignore: unused_field
      _item,
      // ignore: unused_field
      _payment,
      // ignore: unused_field
      _delivery;

  
  final itemController = TextEditingController();
  final paymentController = TextEditingController();
  final deliveryController = TextEditingController();
  final _Key = GlobalKey<FormState>();

  bool validate() {
    if (_Key.currentState!.validate()) {
      _Key.currentState!.save();
      return true;
    } else {
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 50.0),
          child: Center(
            child: Column(children: [
              Text(
                "Voucher",
                style: TextStyle(color: Colors.black),
              ),
            ]),
          ),
        ),
      ),
      body:
        Column(
          children: [
            Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10,),
                      child: TextFormField(
                        controller: paymentController,
                        decoration: const InputDecoration(
                          labelText: 'Voucher 1',
                          hintText: 'Enter your voucher code',
                          suffixIcon: Icon(
                            FontAwesomeIcons.creditCard,
                            size: 17,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty && value.length < 4) {
                            return 'Provide a valid mode';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _payment = value!;
                        },
                      ),
                    ),
                Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10,),
                      child: TextFormField(
                        controller: paymentController,
                        decoration: const InputDecoration(
                          labelText: 'Voucher 2',
                          hintText: 'Enter your voucher code',
                          suffixIcon: Icon(
                            FontAwesomeIcons.creditCard,
                            size: 17,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty && value.length < 4) {
                            return 'Provide a valid mode';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _payment = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10,),
                      child: TextFormField(
                        controller: paymentController,
                        decoration: const InputDecoration(
                          labelText: 'Voucher 3',
                          hintText: 'Enter your voucher code',
                          suffixIcon: Icon(
                            FontAwesomeIcons.creditCard,
                            size: 17,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty && value.length < 4) {
                            return 'Provide a valid mode';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _payment = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10,),
                      child: TextFormField(
                        controller: paymentController,
                        decoration: const InputDecoration(
                          labelText: 'Voucher 4',
                          hintText: 'Enter your voucher code',
                          suffixIcon: Icon(
                            FontAwesomeIcons.creditCard,
                            size: 17,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty && value.length < 4) {
                            return 'Provide a valid mode';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _payment = value!;
                        },
                      ),
                    ),
                  
                Padding(
                    padding: const EdgeInsets.only(top: 30.0,  right: 20),
                    child: ElevatedButton(
                      onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  const Bills()),
                      );
                    }, 
                      child: const Text('Add'),
                    ),
                  ),     
          ],
        ),
    );
  }
}
