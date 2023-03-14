import 'package:flutter/material.dart';



class BuyAirtimeScreen extends StatefulWidget {
  const BuyAirtimeScreen({Key? key}) : super(key: key);

  @override
  _BuyAirtimeScreenState createState() => _BuyAirtimeScreenState();
}

class _BuyAirtimeScreenState extends State<BuyAirtimeScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _buyAirtime() {
    // Add code here to buy airtime
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airtime'),
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

      body:SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Padding(
          padding: const EdgeInsets.only( top: 10),
          child:
          Center(
          child: Padding(
            padding: const EdgeInsets.only(top:18.0,),
            child: Container(
                height: 100,
                width: 310,
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
                            horizontal: 15.0, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween,
                          children: [
                            Text("N18,625.58",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xff424242),
                                )),
                        Text("SAVINGS",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                          height: 15
                      ),
                       Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(right:130.0),
                               child: RichText(
                                 text: TextSpan(
                                 text: "Account No:",
                                 style: TextStyle(
                                     color: Colors.white),
                                 children: [
                                   TextSpan(
                                     text: "    53497721",
                                     style: TextStyle(
                                       fontWeight: FontWeight.w600,
                                       color: Colors.white,
                                   ),
                           )
                           ]
                       )
            ),
                             ),
            ]
          )
                ]
            ),
            ),
          ),
          ),
          ),

SizedBox(
  height: 15,
),

                  Padding(
                    padding: const EdgeInsets.only(left:11.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                      "Select Network",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xdd1d1d1e),
                      ),
                    ),
            ]
      ),
                  ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/mtn.png',
                   width:70,
                      height: 70,
                    ),
                    Image.asset('assets/glo.png',
                      width:70,
                      height: 70,
                    ),
                    Image.asset('assets/9mobile.png',
                      width: 70,
                      height: 70,
                    ),
                    Image.asset('assets/airtel.png',
                      width:70,
                      height: 70,
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,),
                  child: Text(
                    "Phone number",
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
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0x6fb7bac0),
                              hintText: '+234__  __',
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
                Padding(
                  padding: const EdgeInsets.only(left:18.0,),
                  child: Text(
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
    height: 20,
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
                        onPressed: () {
    Navigator.pop(context);
    },
                            child: Row(
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
                    ),
              ],
            ),
      ),
    );
  }
}
