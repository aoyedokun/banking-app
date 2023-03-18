import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_learn/onboarding.dart';
import 'package:new_learn/services/firebase_auth_service.dart';
import 'package:new_learn/signup.dart';

import 'home/homepage.dart';


class LogIn extends StatefulWidget {
    const LogIn({Key? key}) : super(key: key);

    @override
    State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {




  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  bool _obscureText = true;
  bool _isAuthenticating = false;

    @override
    Widget build(BuildContext context) {

      final height = MediaQuery.of(context).size.height;


      var screenSize = MediaQuery.of(context).size;
      double screenWidth = screenSize.width;
      double screenHeight = screenSize.height;



        return Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: false,
            appBar: AppBar(
                title: Text('LogIn'),
            automaticallyImplyLeading: false,
            leading: GestureDetector(
            onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => OnboardingScreen()),
            );
        },
        child: Icon(
        Icons.cancel,
        color: Colors.white,
        ),
        ),
        backgroundColor: Color(0xFFF24E00),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
        padding:  EdgeInsets.fromLTRB(
            screenWidth / 20, screenHeight / 40, screenWidth / 20, 0),
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
        "Welcome Back",
        style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFFF24E00),
        ),
        ),
        Image.asset(
        "assets/Logo.png",
        height: screenWidth / 5,
        width: screenWidth / 5,
        ),
        ],
        ),
        ),
              Padding(
                padding:EdgeInsets.fromLTRB(
                    screenWidth / 20, screenHeight / 40, screenWidth / 20, 0),
                child: Column(
                children:<Widget>[
                  inputFile(
                      label: "Email", hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                     controller: _emailController,
                    validator: (value) {
                      bool emailValid = RegExp(
                          r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!);

                      if (value!.isEmpty) {
                        return 'Please enter your correct address';
                      }

                      else if (!emailValid) {
                          return 'Please enter a valid email address';
                        }
                      }
                      ),

                  SizedBox(
                      height: screenHeight / 30
                  ),
              inputFile(label: "password", hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
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

      }
              ),
                ],
              ),
              ),
        SizedBox(
        height: 10,
        ),
              Center(
                child: Text(
                    "Forgot password?",
        style: TextStyle(color: Colors.black),
        ),
              ),

        SizedBox(
        height: 35,
        ),

        Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width:  MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
            color: Color(0XFFF24E00),
            borderRadius: BorderRadius.circular(30),
            ),
            child:_isAuthenticating // display loading widget when authenticating
                ? Center(
              child: CircularProgressIndicator(
                valueColor:
                AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
            :TextButton(
            onPressed: () async {
              setState(() {
                _isAuthenticating = true;
              });
              try {
                await FirebaseAuthService().signup(
                    _emailController.text.trim(),
                    _passwordController.text.trim());

                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }
              on FirebaseException catch (e) {
                print(e.message);
              } finally {
                setState(() {
                  _isAuthenticating = false;
                });
              }
            },
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text(
              "Log In",
              style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              SizedBox(height: height * 0.01,
              ),
              ]
              )
              ),
              ),
        ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              child:
            Center(
              child: Container(
              width: 250,
                  child:
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              text: "Don't have an account?  ",
              style: TextStyle(color: Colors.black),
              children: [
              TextSpan(
              text: "Sign up",
              style: TextStyle(color:Color(0xFFF24E00)),
              ),
              ]
              ),
              ),
                  )
              ),
            )
          )
              ]
      ),
          )
      )
          );
        }
            }

            Widget inputFile({label, obscureText = false, toggleVisibility,
              hintStyle, TextEditingController? controller ,  FormFieldValidator<String>? validator}) {
              bool isValid = true;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text(
                label,
                style: TextStyle(fontSize: 12,
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
              contentPadding: EdgeInsets.symmetric(vertical:0,
              horizontal:10),
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
              hintStyle: hintStyle,
              ),
              ),
              ]
              );



            }






