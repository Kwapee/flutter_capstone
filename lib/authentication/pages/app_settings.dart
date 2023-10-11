import 'package:final_project/wide/home.page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'Login.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, auth, child) => StreamBuilder(
          stream: auth.onAuthStateChange(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MainHomePage();
            }
            return const LoginPage();
          }),
    );
  }
}