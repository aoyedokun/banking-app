import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_learn/services/firebase_auth_service.dart';

import 'home/homepage.dart';
import 'home/terms and conditions.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final navigatorKey = GlobalKey<NavigatorState> ();

  bool _obscureText = true;
  bool agree = true;

 @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: Text('Sign Up'),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
        onTap: () {
      Navigator.pop(context);
    },
    child: Icon(
    Icons.cancel,
    color: Colors.white,
    ),
    ),
    backgroundColor: Color(0xFFF24E00),
    ),
    body: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 20),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    "Account Details",
    style: TextStyle(
    fontSize: 16,
    color: Color(0xFFF24E00),
    ),
    ),
    Image.asset(
    "assets/Logo.png",
    height: 60,
    width: 60,
    ),
    ],
    ),
    ),
      Padding(padding: EdgeInsets.symmetric(horizontal:20),
        child: Column(
          children:<Widget>[
            inputFile(label: "FirstName",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 13
            ),
            inputFile(label: "LastName",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12)),
            SizedBox(
                height: 13
            ),
            inputFile(label: "Email",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
              controller: _emailController,
                validator: (value) {
                  bool emailValid = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!);

                  if (value!.isEmpty) {
                    return 'Please enter your correct address';
                  }

                  else if (!emailValid) {
                    return 'Please enter a valid email address';
                  }
                }
            ),

            SizedBox(
                height: 13
            ),
            inputFile(label: "password",
              hintStyle: TextStyle(color: Colors.grey,
                    fontSize: 12),
              obscureText: _obscureText, toggleVisibility: (){
              setState(() {
                _obscureText = !_obscureText;
              });
            },
              controller: _passwordController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your password';
            }
            else if (value.length < 8) {
              return 'Password must be at least 8 characters long';
            }

          },
            ),


      SizedBox(
      height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left:18.0),
        child: Row(
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
            textAlign: TextAlign.start,
            text: TextSpan(
              text: "I have read, understand and I agree to\n",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "Ace`s Privacy Policy/Terms and Conditions",
                  style: TextStyle(color: Color(0xFFF24E00)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TermsAndConditionsScreen()),
                      );
                    },
                ),
              ],
            ),
          )

          ]
        ),
      ),
        SizedBox(
        width: double.infinity,
      height: 35,
      ),

      Center(
        child: Container(
        height: 55,
        width: 350,
        decoration: BoxDecoration(
        color: Color(0XFFF24E00),
        borderRadius: BorderRadius.circular(30),
        ),
        child:
        TextButton(
        onPressed: () async{

          try {
            await FirebaseAuthService().signup(
                _emailController.text.trim(),
                _passwordController.text.trim());
          }
          on FirebaseException catch (e) {
            print(e.message);
          }

   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
      ),

      Container(
      width: 250,
      margin: EdgeInsets.only(top: 15, left: 60, right: 20),
      child:
      RichText(
      textAlign: TextAlign.center,

      text: TextSpan(
      text: "Have an account already ?  ",
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
        ]
    )
    )

      );
  }
}
Widget inputFile({label, obscureText = false, toggleVisibility,
  hintStyle,TextEditingController? controller,FormFieldValidator<String>? validator }) {
  bool isValid = true;
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xdd1d1d1e)),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            String? errorMessage = validator?.call(value);
            isValid = errorMessage == null;
            return errorMessage;
          },
          decoration: InputDecoration(
            hintStyle: hintStyle,
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            filled: true,
            fillColor: Color(0x6fb7bac0),
            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
            ),
            suffixIcon: label == "password"
                ? obscureText
                ? IconButton(
              icon: Icon(
                Icons.visibility_off_rounded,
                color: Colors.black38,
              ),
              onPressed: toggleVisibility,
            )
                : IconButton(
              icon: Icon(
                Icons.visibility_rounded,
                color: Colors.black38,
              ),
              onPressed: toggleVisibility,
            )

                : null,
            hintText: label,

          ),
        ),
      ]
  );
}





