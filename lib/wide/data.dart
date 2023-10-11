import 'package:final_project/wide/delivery.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';


import '../authentication/providers/auth_provider.dart';
import 'home.page.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  // ignore: unused_field
  late String _fullName,
      // ignore: unused_field
      _email,
      // ignore: unused_field
      _phoneNumber,
      // ignore: unused_field
      _address,
      // ignore: unused_field
      _item,
      // ignore: unused_field
      _payment,
      // ignore: unused_field
      _delivery;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phonenumberController = TextEditingController();
  final passwordController = TextEditingController();
  final addressController = TextEditingController();
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

  Future<void> data() async {
    try {
      if (validate()) {
        await Provider.of<AuthProvider>(context, listen: false).data(
          nameController.text,
          emailController.text,
          addressController.text,
        );
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const MainHomePage(),
            ),
          );
        }
      }
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            err.toString(),
          ),
        ),
      );
    }
  }

  int currentStep = 0;
  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlsBuilder(context, details) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: details.onStepCancel, child: const Text('Previous')),
        const SizedBox(
          width: 10,
        ),
        OutlinedButton(
            onPressed: details.onStepContinue, child: const Text('Forward')),
      ],
    );
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
                "Your Data Plan",
                style: TextStyle(color: Colors.white),
              )
            ]),
          ),
        ),
      ),
      body: Stepper(
        physics: const ClampingScrollPhysics(),
        elevation: 0,
        type: StepperType.vertical,
        currentStep: currentStep,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        onStepTapped: onStepTapped,
        controlsBuilder: controlsBuilder,
        steps: [
          Step(
            title: const Text('Step 1'),
            content: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        labelText: 'Full Name', hintText: 'Enter your name'),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 6) {
                        return 'Provide a valid name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _fullName = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      suffixIcon: Icon(
                        FontAwesomeIcons.envelope,
                        size: 17,
                      ),
                    ),
                    validator: (value) {
                      if (!value!.contains('@')) {
                        return 'Provide a valid email';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _email = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: TextFormField(
                    controller: phonenumberController,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter Phone Number',
                      suffixIcon: Icon(
                        FontAwesomeIcons.phone,
                        size: 17,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty && value.length <= 10) {
                        return 'Provide a valid phone number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _phoneNumber = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 2'),
            content: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: TextFormField(
                    controller: addressController,
                    decoration: const InputDecoration(
                      labelText: 'GPS Address',
                      hintText: 'Enter your address',
                      suffixIcon: Icon(
                        FontAwesomeIcons.addressBook,
                        size: 17,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty && value.length < 5) {
                        return 'Provide a valid address';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _address = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: TextFormField(
                    controller: itemController,
                    decoration: const InputDecoration(
                      labelText: 'Number Of Items Purchased',
                      hintText: 'Enter the number',
                      suffixIcon: Icon(
                        FontAwesomeIcons.envelope,
                        size: 17,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty && value.length <= 2) {
                        return 'Provide a valid number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _item = value!;
                    },
                  ),
                ),
              ],
            ),
            isActive: currentStep >= 1,
            state: currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 3'),
            content: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: TextFormField(
                    controller: paymentController,
                    decoration: const InputDecoration(
                      labelText: 'Mode Of Payment',
                      hintText: 'VISA/MOMO/CREDITCARD/PAYPAL',
                      suffixIcon: Icon(
                        FontAwesomeIcons.paypal,
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
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: TextFormField(
                    controller: deliveryController,
                    decoration: const InputDecoration(
                      labelText: 'Mode Of Delivery',
                      hintText: 'Pick up/Door Step',
                      suffixIcon: Icon(
                        FontAwesomeIcons.car,
                        size: 17,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty && value.length < 5) {
                        return 'Provide a valid mode';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _delivery = value!;
                    },
                  ),
                ), 
                Padding(
                    padding: const EdgeInsets.only(top: 1.0,  left: 220),
                    child: ElevatedButton(
                      onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  const Delivery()),
                      );
                    }, 
                      child: const Text('Order Now'),
                    ),
                  ),
              ],
            ),
            isActive: currentStep >= 2,
            state: currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
          
        ],

      ),
       
    );
  }
}
