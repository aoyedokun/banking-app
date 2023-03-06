import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _isObscure = true;
  bool agree = false;
  @override

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
        appBar: AppBar(
        automaticallyImplyLeading: false,
            leading: GestureDetector(
            onTap: () { Navigator.pop(context);
              },
    child: Icon(

    Icons.cancel,
      color: Colors.black45,
    ),
            ),
    backgroundColor: Color(0x86FFFFFF),

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

            children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0, top: 20),
              child:
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
          Text("Account Details",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFFF24E00),
              )
          ),
        Image.asset("assets/Logo.png",
          height: 60,
          width: 60,
        ),
              ]
            ),
            ),

     Padding(
       padding: const EdgeInsets.only(left:20.0),
       child: Text(
                      "Securly Signup to your Ace",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,

              )
          ),
     ),



    SizedBox(height: 10,),
    Container(
    width: 350,
    margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
    child: Form(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
    Padding(
    padding: const EdgeInsets.all(1),
    child: TextFormField(
    decoration: const InputDecoration(
    hintText: 'First name',
    hintStyle: TextStyle(color: Colors.black12),
    border: OutlineInputBorder(
    )
    )
    ),
    ),
    SizedBox(height: 20,),
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Last name',
    hintStyle: TextStyle(color: Colors.black12),
    border: OutlineInputBorder(
    )
    )
    ),
    SizedBox(height: 20,),
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Email',
    hintStyle: TextStyle(color: Colors.black12),
    border: OutlineInputBorder(

    )
    ),
    ),
    SizedBox(height: 20,),
    TextFormField(
    obscureText: _isObscure,
    decoration: InputDecoration(
    hintText: 'Password',
    hintStyle: TextStyle(color: Colors.black12),
    suffixIcon: IconButton(
    icon: Icon(_isObscure ? Icons.visibility_off_rounded : Icons.visibility_rounded),
    onPressed: () {
    setState(() {
    _isObscure = !_isObscure;
    });
    },
    ),
    border: OutlineInputBorder(


    )
    )
    ),
      SizedBox(height: 30,
    ),
    Row(
        children: [
    Material(
    child: Checkbox(
    value: agree,
      activeColor: Color(0xFFF24E00),
    onChanged: (value) {
    setState(() {
    agree = value ?? false;
    });
    },
    ),
    ),
    RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
    text: "I have read,understand and I agree to\n",
    style: TextStyle(color: Colors.black),
    children: [
    TextSpan(
    text: "Ace`s Privacy Policy/Terms and Conditions",
    style: TextStyle(color: Color(0xFFF24E00)),
    ),
    ]
    )
    ),
    ]
    ),
    SizedBox(
    height: 35,
    ),
    Padding(padding: EdgeInsets.all(8.0)),
    Container(
    height: 55,
    width: 350,
    decoration: BoxDecoration(
    color: Color(0XFFF24E00),
    borderRadius: BorderRadius.circular(30),
    ),
    child:
    TextButton(
    onPressed: () {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => const LogIn()
    )
    );
    },

    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Text(
    "Continue",
    style: TextStyle(fontSize: 15, color: Colors.white),
    ),
    SizedBox(height: 5,
    ),
    ]
    )
    ),
    ),

    Container(
    width: 250,
        margin: EdgeInsets.only(top: 15, left: 60, right: 20),
        child:
        RichText(
          textAlign: TextAlign.center,

    text: TextSpan(
    text: "I have an account already ?  ",
    style: TextStyle(color: Colors.black),
    children: [
    TextSpan(
    text: "Login",
    style: TextStyle(color:Color(0xFFF24E00)),
    ),
    ]
    ),
    )
    )
    ]
    )

    )
    )

        ]
    )
    );
    }
}