import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: Text("Desh Bala"),
              accountEmail: Text("deshbala999#@gmail.com"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(
                    "bik/images/lets-shopping-logo-design-template-cart-icon-designs-134743663.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            textColor: Colors.purple,
            onTap: () {},
            iconColor: Colors.red,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("My Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            textColor: Colors.purple,
            onTap: () {},
            iconColor: Colors.red,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cart),
            title: Text("My Orders",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            textColor: Colors.purple,
            onTap: () {},
            iconColor: Colors.red,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.heart_fill),
            title: Text("My Favourite",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            textColor: Colors.purple,
            onTap: () {},
            iconColor: Colors.red,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text("Settings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            textColor: Colors.purple,
            onTap: () {},
            iconColor: Colors.red,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.left_chevron),
            title: Text("Logout",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            textColor: Colors.purple,
            onTap: () {},
            iconColor: Colors.red,
          )
        ],
      ),
    );
  }
}
