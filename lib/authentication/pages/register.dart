import 'package:final_project/authentication/pages/Login.dart';
import 'package:final_project/wide/home.page.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // ignore: unused_field
  late String _fullName, _email, _password, _phoneNumber, _address;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phonenumberController = TextEditingController();
  final passwordController = TextEditingController();
  final addressController = TextEditingController();
  final _Key = GlobalKey<FormState>();

bool validate() {
    if (_Key.currentState!.validate()) {
      _Key.currentState!.save();
      return true;
    } else {
      return false;
    }
  }

  Future<void> register() async {
    try {
      if (validate()) {
        await Provider.of<AuthProvider>(context, listen: false).register(
          nameController.text,
          emailController.text,
          passwordController.text,
        );
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) =>  const MainHomePage(),
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
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _Key,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding:  EdgeInsets.only(top: 60.0, right: 50.0, left: 60.0,),
                    child:  Image(
                    image: AssetImage('assets/img13.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0),
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
                    padding: const EdgeInsets.only(top:1.0),
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
                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Password',
                        suffixIcon: Icon(
                          FontAwesomeIcons.eyeSlash,
                          size: 17,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty && value.length <= 9) {
                          return 'Provide a valid password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
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
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: TextFormField(
                      controller: addressController,
                      decoration: const InputDecoration(
                        labelText: 'Address',
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
                    padding: const EdgeInsets.only(top: 1.0,  left: 140),
                    child: OutlinedButton(
                      onPressed: register,
                      child: const Text('Register', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  OutlinedButton(
                    child: const Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 15,
                        child: Text('Already have an account? click here to the login page', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  const LoginPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
