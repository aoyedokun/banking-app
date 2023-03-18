import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_learn/activities/buy%20airtime.dart';

import '../activities/transfer_screen.dart';
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

    var screenSize = MediaQuery.of(context).size;


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
              buildNavBarItem(Icons.home,"Home", 0, ),
              buildNavBarItem(Icons.card_membership_outlined, "Transaction",1,),
              buildNavBarItem(Icons.person, "Profile",2, ),
              buildNavBarItem(Icons.contact_support, "Help",3, ),
            ]
        ),
        body:Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child:SingleChildScrollView(
                child: Stack(
                  children: [
                  Container(
                        height: MediaQuery.of(context).size.height * 0.29,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFF24E00),
                                Color(0xFFE18354)]),
                        ),
                        child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height * 0.02,
                                    left: MediaQuery.of(context).size.width * 0.05,
                                    right: MediaQuery.of(context).size.width * 0.05,
                                  ),
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
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment
                                    .center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width:MediaQuery.of(context).size.width * 0.2,
                                      height: MediaQuery.of(context).size.width * 0.2,
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
                                    width: 6,),
                                  Column(children: [
                                    Text("Hello Ayo", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 5,),
                                    Row(children: [
                                      Text("Welcome back",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                        ),
                                      ),
                                    ],
                                    ),
                            ]
                          ),
                            ]
                          ),
                          ),
              ]
            )
        ),
                    Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [Color(0xFFE18354),
                                  Color(0xFFF24E00)]),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: 1
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text("Current Account",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize:  MediaQuery.of(context).size.width * 0.05,
                                              color: Colors.white,
                                            )),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.settings,
                                            color: Colors.white,),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0,),
                                    child: Row(
                                      children: const [
                                        Text("53497721",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.01,
                                  ),
                                  Container(
                                        width:  MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.06,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.circular(5.0),
                                            border: Border.all(
                                              color: Colors.blueGrey,
                                              width: 0.4,
                                            )
                                        ),
                                        child:
                                        Center(
                                          child: Text('₦342,000.00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize:  MediaQuery.of(context).size.width * 0.05,
                                                color: Colors.white,
                                              )
                                          ),
                                        ),
                                      )
                                ],
                              ),
                            ),
                          ),
                        ),

                    Padding(
                      padding: const EdgeInsets.only(top:190.0),
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
                          color: Colors.white,
                          child: Column(
                              children: [
                                Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => BuyAirtimeScreen()),
                                            );
                                          },
                                          child:
                                          buildActivityButton(
                                            context,
                                              Icons.mobile_friendly,
                                              "Buy Airtime",
                                              Colors.white.withOpacity(0.3),
                                              Color(0xFFE18354),

                                          ),
                                        ),
                                        buildActivityButton(
                                          context,
                                            Icons
                                                .account_balance_wallet_outlined,
                                            "Pay Bills",
                                            Colors.white.withOpacity(0.3),
                                            Color(0xFFE18354)
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
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => TransferScreen()),
                                          );
                                        },
                                        child:
                                        buildActivityButton(
                                          context,
                                            Icons
                                                .transit_enterexit_outlined,
                                            "Transfer",
                                            Colors.white.withOpacity(0.3),
                                            Color(0xFFE18354)
                                        ),
                                      ),
                                      buildActivityButton(
                                        context,
                                          Icons.send_to_mobile_outlined,
                                          "Buy Data",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFE18354)
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
                                        context,
                                          Icons.send_outlined,
                                          "FX Purchase",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFE18354)
                                      ),
                                      buildActivityButton(
                                        context,
                                          Icons.qr_code_2,
                                          "QR Code",
                                          Colors.white.withOpacity(0.3),
                                          Color(0xFFE18354)
                                      ),
                                    ]
                                ),
                        ]
                      )
                    ),
            ),
                          Padding(
                          padding: const EdgeInsets.only(top:469.0),
    child: Container(
    height:10,
    color: Colors.grey.withOpacity(0.3),
    ),
                          ),


                    Padding(
                      padding: const EdgeInsets.only(top:482.0),
                      child: Container(
                        height:35,
                      color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment
                        .spaceBetween,
                  children: [
              Padding(
              padding: const EdgeInsets.only(
                  top:4.0, left: 10),
              child: Text("Transaction History",
                style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight
                          .w600),
              ),
              ),
                          Padding(
                            padding: const EdgeInsets.only(top:6.0),
                            child: TextButton(
                              child: Text("View All",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFFF24E00),
                                    fontWeight: FontWeight
                                        .w600),),
                              onPressed: () {},
                            ),
                          ),
                      ]
                    ),
                      )
                    ),

              Padding(
                padding: const EdgeInsets.only(top:529.0),
                child: SingleChildScrollView(
                    scrollDirection: Axis
                        .horizontal,
                    child: Row(
                      children: [
                        Card(),
                        SizedBox(
                          width: 7,
                        ),
                        Card(),
                        SizedBox(
                          width: 7,
                        ),
                        Card(),
                        SizedBox(
                          width: 7,
                        ),
                        Card(),
                      ],
                    )
                ),
              ),
              ]
                      )
                    )

            ),
        );
  }


  GestureDetector buildNavBarItem(IconData icon, String title, int index,) {
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
            .width / 4,
        height: 50,
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
  return Row(
      crossAxisAlignment: CrossAxisAlignment
          .center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    Container(
        height: 130,
        width: 250,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
    color: Colors.white,
    boxShadow: [
    BoxShadow(
    color: Colors.grey,
    blurRadius: 1.0,
    spreadRadius: 1.0,
    offset: Offset(
    1.0,
    1.0,
    )
        )
        ]
    ),
        child: Row(
            children: [
              Padding(
          padding: const EdgeInsets.only(right:20.0),
          child: Icon(
            Icons.phone_android,
            color: Color(0xFFF24E00),
            size: 45,
          ),
        ),
              Padding(
                padding: const EdgeInsets.only(top:18.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
SizedBox(
  height:10
),
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
            ),


                      ),

    ]
                  )
              )
            ]
    );

  }
  }
  Container buildActivityButton( BuildContext context, IconData icon, String title,
  Color backgroundColor, Color iconColor) {
  return Container(
  height:MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.4,
  decoration: BoxDecoration(
  color: backgroundColor,
  borderRadius: BorderRadius.circular(10.0),
  border: Border.all(
  color: Colors.grey,
  width: 0.4,
  ),
  ),
  child: Padding(
  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
  child: Column(
  children: [
  Icon(
  icon,
  color: iconColor,
    size: MediaQuery.of(context).size.width * 0.1,
  ),
  SizedBox(
  height: MediaQuery.of(context).size.height * 0.01,
  ),
  Text(title,
  style: TextStyle(
  fontSize: MediaQuery.of(context).size.width * 0.04,
  color: Colors.black),)
  ],
  ),
  )
  );
  }
































































