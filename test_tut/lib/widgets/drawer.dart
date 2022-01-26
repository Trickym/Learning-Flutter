import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Prashant Mishra'),
                  accountEmail: Text('pm21641@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/57531551?v=4'),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor: Colors.white,
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              iconColor: Colors.white,
              title: Text(
                'Email Me',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
