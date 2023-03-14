import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_learn/login.dart';

import 'content_model.dart';
import 'signup.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: Column(
      children: [
      Expanded(
        child: PageView.builder(
        itemCount: contents.length,
        onPageChanged: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Image.asset(contents[i].image,
                height: 330,
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                contents[i].title,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )
                ),
                Text(
                contents[i].discription,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                )
              ]
            ),
          );
        }
      )
    ),
    Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
    contents.length,
    (index) => buildDot(index ,context)
    )
    )
    ),

    Container(
    height: 55,
    margin: EdgeInsets.all(15),
    width: double.infinity,
      child: TextButton(
          child: Text("Get Started",
    style: TextStyle(fontSize: 15),
    ),
    onPressed: () {
    showModalBottomSheet(
        backgroundColor:Colors.transparent,
        context: context, builder: (BuildContext) {
    return Container(
        height: 387,
        padding: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0))),
    child:Column(

    children:[
    ListTile(
    leading:Image.asset( "assets/nig.png"),
    title:Text("Nigeria"),
    onTap: () {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => const SignUp()
      ),
    );
    }
    ),
    ListTile(
    leading:Image.asset( "assets/gha.png"),
    title:Text("Ghana"),
        trailing: Text("coming soon",
          style: TextStyle(fontSize: 10,
            color: Colors.black54,
          ),),
    onTap: () {
    Navigator.pop(context);
    }
    ),
    ListTile(
    leading:Image.asset( "assets/ken.png"),
    title:Text("Kenya"),
    trailing: Text("coming soon",
      style: TextStyle(fontSize: 10,
        color: Colors.black54,
      ),),
    onTap: () {
    Navigator.pop(context);
    }
    ),
    ListTile(
    leading:Image.asset( "assets/south.png"),
    title:Text("South Africa"),
        trailing: Text("coming soon",
      style: TextStyle(fontSize: 10,
      color: Colors.black54,
      ),),
    onTap: () {
    Navigator.pop(context);
    }
    ),
      ListTile(
          leading:Image.asset( "assets/rwan.png"),
          title:Text("Rwanda"),
          trailing: Text("coming soon",
            style: TextStyle(fontSize: 10,
              color: Colors.black54,
            ),),
          onTap: () {
            Navigator.pop(context);
          }
      ),
    Divider(height:5,),
    ListTile(
    leading:Icon(Icons.cancel_outlined),
    title:Text("Cancel"),
    onTap: () {
    Navigator.pop(context);
    }
    ),
    ]
    )
    );
    }
    );
    },
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFFF24E00),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
      )
      )
      )
    ),

      Container(
      height: 55,
      margin: EdgeInsets.all(15),
    width: double.infinity,
    child: TextButton(
    child: Text("Log In",
      style: TextStyle(fontSize: 15),
    ),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => const LogIn()
      )
      );
    },
    style: TextButton.styleFrom(
    foregroundColor: Color(0xFFF24E00),
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
    side: BorderSide(color: Color(0xFFF24E00), width: 1),
    borderRadius: BorderRadius.circular(20)

    )
    )
    )
    )
    ]
      )
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
  height:10,
  width: currentIndex == index ? 22 :8,
  margin: EdgeInsets.only(right: 5),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Color(0xFFF24E00),
  )
  );
  }
}
