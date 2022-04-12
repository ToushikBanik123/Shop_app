import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p_app/utils/const.dart';
import '../utils/routes.dart';

class appdrawer extends StatelessWidget {
  const appdrawer({Key? key}) : super(key: key);

  final imageUrl = 'https://www.nanx.com.pk/wp-content/uploads/2017/01/istockphoto-476085198-612x612.jpg';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: PrimaryColor,
      child: ListView(
        children: [
          DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),
                  backgroundColor: Colors.white,
                ),
                accountName: const Text("Toushik Banik",
               textScaleFactor: 2,
              ),
                accountEmail: const Text("toushikbanikofficial@gmail.com"),
                margin: EdgeInsets.zero,
          ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email me",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )],
      ),
    );
  }
}
