import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.name,
    required this.profession,
  }) : super(key: key);

  final String name, profession;
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
    subtitle: Text(profession,
    style: const TextStyle(color:Colors.black54),
    ),
    );
  }
}
