import 'package:final_project/authentication/pages/register.dart';
import 'package:final_project/wide/home.page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: unused_field
  late String _email, _password;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _Key = GlobalKey<FormState>();

  bool validate() {
    if (_Key.currentState!.validate()) {
      _Key.currentState!.save();
      return true;
    } else {
      return false;
    }
  }

  Future<void> loginUser() async {
    try {
      if (validate()) {
        await Provider.of<AuthProvider>(context, listen: false).loginUser(
          _emailController.text,
          _passwordController.text,
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
                padding: EdgeInsets.only(
                  top: 30.0,
                  right: 50.0,
                  left: 60.0,
                ),
                child: Image(
                  image: AssetImage('assets/img12.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: TextFormField(
                  controller: _emailController,
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
                padding: const EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _passwordController,
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
              const Padding(
                padding: EdgeInsets.only(
                  left: 230.0,
                ),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, right: 80.0, left: 80.0),
                child: OutlinedButton(
                  child:  const Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 15,
                      child: Text('Login', style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  onPressed: loginUser,
                ),
              ),
              OutlinedButton(
                child: const Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 15,
                    child: Text(
                        'You don`t have an account?Click here to register. ', style: TextStyle(color: Colors.black),),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()),
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
