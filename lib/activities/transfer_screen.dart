import 'package:flutter/material.dart';
import 'package:new_learn/activities/search_screen.dart';

import '../login.dart';

class TransferScreen extends StatefulWidget {
  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _remarksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer to Account'),
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
    child:
       Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15
            ),
            Container(
    height: 55,
    width: 350,
    decoration: BoxDecoration(
      color: Color(0x6fb7bac0),

      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(children: [
    Padding(
    padding: const EdgeInsets.only(top: 6.0,left: 10),
    child:
    Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text("Select bank",
      style: TextStyle(
      fontSize: 14,
      color: Colors.black12),
      ),
      IconButton(
      onPressed: () {
      // method to show the search bar
      showSearch(
      context: context,
      delegate: CustomSearchDelegate()
      );
      },
      icon: const Icon(Icons.search,
          color: Colors.black12),
      )
              ]
      ),
    )
      )
        ]
    )
    ),
        SizedBox(
          height: 18,
        ),
        Container(
            decoration: BoxDecoration(
            border: Border(
            bottom: BorderSide(
            color: Colors.grey,
            width: 1.0,
    )
            )
            )
        ),


            SizedBox(
              height: 20,
            ),
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(
                   padding: const EdgeInsets.only(left:18.0,),
                   child:
                   Text(
                      "Account Number",
                      style: TextStyle(fontSize: 12,
                          color: Color(0xdd1d1d1e)),
                    ),
               ),
               SizedBox(
                 width: 10,
               ),
               Padding(
                   padding: const EdgeInsets.only(right:10.0),
                   child:
                TextButton(
                   onPressed: () {

                   },
                   child: Text(
                     "Select beneficiary",
                     style: TextStyle(
                       fontSize: 10,
                       fontWeight: FontWeight.w500,
                       color: Color(0XFFF24E00),
                     ),
                   ),
                 ),
               )
      ]
               ),




              SizedBox(
                height: 10,
              ),
              Center(
                  child: SizedBox(
                      width: 350,
                      height: 50,
                      child: TextFormField(
                          controller: _accountController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0x6fb7bac0),
                            hintText: 'Enter account number',
                            hintStyle: TextStyle(color: Colors.black12),
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0),
                              ),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          )
                      )
                  )
              ),
      SizedBox(
        height: 19,
      ),
      Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right:300.0),
              child:  Text(
          "Amount",
          style: TextStyle(fontSize: 12,
              color: Color(0xdd1d1d1e)),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
          child: SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0x6fb7bac0),
                  hintText: '₦0.00',
                  hintStyle: TextStyle(color: Colors.black12),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                )
            )
          )
      ),
      SizedBox(
        height: 19,
      ),
    Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(right:300.0),
    child:  Text(
          "Narration",
          style: TextStyle(fontSize: 12,
              color: Color(0xdd1d1d1e)),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
          child: SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
                controller: _remarksController,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0x6fb7bac0),
                  hintText: 'Narration',
                  hintStyle: TextStyle(color: Colors.black12),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                )
            )
          )
      ),

              SizedBox(height: 32.0),
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
    onPressed: () {
        Navigator.pop(context);
                },

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      "Continue",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ]

              )
                ),
        ),
      )
            ],
          ),

            ]
      ),
      ]
    )
      )
    );
  }
}