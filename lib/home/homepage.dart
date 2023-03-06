import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../hamburger/drawer_tile.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFF24E00),
            actions: [
            IconButton(
            onPressed: () {},
      icon: Icon(Icons.notifications_active),
        ),
    ]
    ),
        drawer: Drawer_tile(),

        bottomNavigationBar:
        Row(
            children: [
              buildNavBarItem(Icons.home, 0),
              buildNavBarItem(Icons.credit_card, 1),
              buildNavBarItem(Icons.message, 2),
              buildNavBarItem(Icons.notifications, 3),
              buildNavBarItem(Icons.more_horiz_outlined, 4),
            ]
        ),
        body: Stack(
            children: [
              Column(
                  children: [
                    Container(
                        height: 225,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFF24E00),
                                Color(0xFFE18354)]),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                              ]
                            )

                            ),
                          SizedBox(
                              height: 5
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment
                                    .center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 80.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF0B79C),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(
                                                  .1),
                                              blurRadius: 8,
                                              spreadRadius: 3
                                          )
                                        ],
                                        border: Border.all(
                                          width: 1.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            40.0),
                                      ),
                                      child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/man 1.png")
                                      )
                                  ),
                                  SizedBox(
                                    width: 8,),
                                  Column(children: [
                                    Text("Hello Ethan", style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 5,),
                                    Row(children: [
                                      Text("Welcome back",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white),
                                      ),
                                    ]
                                    )
                                  ],)
                                ]
                            ),
                          )
                        ],)
                    ),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          color: Color(0XFFE5E5E5),
                          child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, right: 259),
                                  child: Text(
                                    "Quick Activity", style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight
                                          .w600),
                                  ),
                                ),
                                SizedBox(
                                    height: 5
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      buildActivityButton(
                                          Icons.mobile_friendly,
                                          "Buy Airtime",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFF1546C1)
                                      ),
                                      buildActivityButton(
                                          Icons
                                              .account_balance_wallet_outlined,
                                          "Pay Bills",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFF1546C1)
                                      ),
                                    ]
                                ),
                                SizedBox(
                                    height: 5
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      buildActivityButton(
                                          Icons
                                              .transit_enterexit_outlined,
                                          "Transfer",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFF1546C1)
                                      ),
                                      buildActivityButton(
                                          Icons.send_to_mobile_outlined,
                                          "Buy Data",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFF1546C1)
                                      ),
                                    ]
                                ),
                                SizedBox(
                                    height: 5
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      buildActivityButton(
                                          Icons.send_outlined,
                                          "FX Purchase",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFF1546C1)
                                      ),
                                      buildActivityButton(
                                          Icons.qr_code_2,
                                          "QR Code",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFF1546C1)
                                      ),
                                    ]
                                ),
                                Container(
                                    color: Color(0XFFE5E5E5),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0, left: 10),
                                            child: Text("Transaction History",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight
                                                      .w600),
                                            ),
                                          ),
                                          SizedBox(
                                              height: 5
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis
                                                .horizontal,
                                            child: Row(
                                              children: [
                                                Card(),
                                                Card(),
                                                Card(),
                                                Card(),
                                              ],
                                            ),
                                          )
                                        ]
                                    )
                                ),
                              ]
                          ),
                        )
                    )
                  ]
              ),
              Positioned(
                  top: 97,
                  left: 55,
                  child:
                  Container(
                      height: 140,
                      width: 290,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xFFE18354),
                          Color(0xFFF24E00)]),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                          children: [
                            SizedBox(
                                height: 5
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text("Current Balance",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.white,
                                      )),
                                  Image.asset("assets/mastercard_logo.png",
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                                height: 0.1
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: [
                                  Text("\#24,546,790",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      )
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                                height: 40
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: [
                                  Text("5464 7554 5665",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.white,
                                      )
                                  ),
                                  SizedBox(
                                      width: 10
                                  ),
                                  Text("09/25",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.white,
                                      )
                                  )
                                ],
                              ),
                            )
                          ]
                      )
                  )
              ),
            ]
        )
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width / 5,
        height: 60,
        color: Colors.white,
        child: Icon(icon,
          color: index == _selectedItemIndex ? Color(0xFFF24E00) : Colors
              .grey,
        ),
      ),
    );
  }

 void onItemPressed(BuildContext context, {required int index}) {
   Navigator.pop(context);

   switch (index) {
     case 0:
   }
 }
}

  class Card extends StatelessWidget {
  const Card({
  Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
  margin: EdgeInsets.only(right: 5),
  width: 260,
  height: 150,
  child: Stack(
  children: [
  Positioned(
  right: 10,
  bottom: 0,
  child: Container(
  height: 380,
  width: 250,
  decoration: BoxDecoration(
  gradient: LinearGradient(colors: [Colors.white,
  Colors.white]),
  borderRadius: BorderRadius.circular(15),
  ),
  ),
  ),
  Positioned(
  left: 15,
  top: 10,
  child: Container(
  height:
  50,
  width: 50,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  color: Colors.white,
  boxShadow: [
  BoxShadow(
  color: Colors.grey,
  blurRadius: 15.0,
  spreadRadius: 5.0,
  offset: Offset(
  5.0,
  5.0,
  )
  ),
  ]
  ),
  ),
  ),
  Positioned(
  top: -85,
  left: -60,
  child: Container(
  height: 240,
  width: 200,
  child: Icon(
  Icons.phone_android,
  color: Color(0xFFF1546C1),
  size: 25,),
  )
  ),
  Positioned(
  right: 17,
  top: 15,
  child: Column(
  children: [
  Text("NGN19,500.00", style: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.black),
  ),
  Text("Success",
  style: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: Colors.green),
  ),
  ]
  )
  ),
  Positioned(
  top: 70,
  left: 17,
  child: Container(
  width: 210,
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text("Bills Payment",
  style: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.black),
  ),
  Text("You have successfully purchased\n"
  "electicity of NGN 200.00",
  style: TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w600,
  color: Colors.grey),
  ),
  Text("15 Feb 2023,07:45 pm",
  maxLines: 3,
  style: TextStyle(fontSize: 10,
  color: Colors.grey),
  ),
  ]
  ),
  )
  )
  ]
  )
  );
  }
  }
  Container buildActivityButton(IconData icon, String title,
  Color backgroundColor, Color iconColor) {
  return Container(
  height: 70,
  width: 160,
  decoration: BoxDecoration(
  color: backgroundColor,
  borderRadius: BorderRadius.circular(10.0),
  border: Border.all(
  color: Colors.blueGrey,
  width: 0.6,
  ),
  ),
  child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
  children: [
  Icon(
  icon,
  color: iconColor,
  ),
  SizedBox(
  height: 10,
  ),
  Text(title,
  style: TextStyle(
  fontSize: 14,
  color: Colors.black),)
  ],
  ),
  )
  );
  }
































































