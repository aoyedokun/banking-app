import 'package:flutter/material.dart';
import 'package:new_learn/login.dart';

class Drawer_tile extends StatefulWidget {
  const Drawer_tile({Key? key}) : super(key: key);

  @override
  State<Drawer_tile> createState() => _Drawer_tileState();
}

class _Drawer_tileState extends State<Drawer_tile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text("Ethan Eleyinmi"),
      accountEmail: Text ("Mobile Developer"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assets/man 1.png",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                ),
                ),
              ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF673922),
                    Color(0xFFE18354)]),

            )
            ),

          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share App'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Change Language'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_invitation_rounded),
            title: Text('Invite Friends'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Log Out'),
            onTap: () {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => const LogIn()
    )
    );
            },
          ),

        ],
      ),
    );
  }
}
