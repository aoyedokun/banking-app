import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.name,
    required this.accountnumber,
  }) : super(key: key);

  final String name, accountnumber;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(CupertinoIcons.person,
        color: Colors.black,)
    ),

    title: Text(name,
    style: const TextStyle(color:Colors.black),
    ),
    subtitle: Text(accountnumber,
    style: const TextStyle(color:Colors.black54),
    ),
    );
  }
}
