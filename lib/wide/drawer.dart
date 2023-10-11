import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer( {super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.wallpapertip.com/wmimgs/240-2407810_gangsta-anime-wallpaper.jpg"),
            ),
            accountName: Text("Perry Kwabena Amoako"),
            accountEmail: Text("p.amoako2002@gmail.com"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 20),
            child: Text(
              "Account Settings",
              style: TextStyle(
                fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(186, 248, 20, 20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: ListView(
              shrinkWrap: true,
              children: const [
                ListTile(
                  title: Text("Manage Account"),
                  subtitle: Text("Manage your account details"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
                ListTile(
                  title: Text("Privacy"),
                  subtitle: Text("Set your account details on lock"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
                ListTile(
                  title: Text("Contacts"),
                  subtitle: Text("Connect with your friends"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
                ListTile(
                  title: Text("Features"),
                  subtitle: Text("Customize your account "), 
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
