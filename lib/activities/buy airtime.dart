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


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
          padding: EdgeInsets.only(top: screenHeight * 0.01 ),
          child:
          Center(
          child: Padding(
            padding: EdgeInsets.only(top:screenHeight * 0.02),
            child: Container(
                height: screenHeight * 0.18,
                width: screenWidth * 0.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0xFFE18354),
                    Color(0xFFF24E00)]),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                    children: [
                      SizedBox(
                          height: screenHeight * 0.01
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05,
                            vertical: screenHeight * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween,
                          children: [
                            Text('₦342,000.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: screenWidth * 0.045,
                                  color: Color(0xff424242),
                                )),
                        Text("SAVINGS",
                            style: TextStyle(
                              fontSize: screenWidth * 0.025,
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                          height: screenHeight * 0.02
                      ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight * 0.05),
                      child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             RichText(
                                 text: TextSpan(
                                 text: "Account No:",
                                 style: TextStyle(
                                   fontSize: screenWidth * 0.025,
                                     color: Colors.black26),

                                 children: [
                                   TextSpan(
                                     text: "  53497721",
                                     style: TextStyle(
                                       fontSize: screenWidth * 0.025,
                                       color: Colors.white,
                                   ),
                           )
                           ]
                       )
            ),

            ]
          )
              )
                ]
            ),
            ),
          ),
          ),
          ),

SizedBox(
  height: screenHeight * 0.01,
),

                  Padding(
                    padding:  EdgeInsets.only(left: screenWidth * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                      "Select Network",
                      style: TextStyle(
                        fontSize: screenWidth < 600 ? 14 : 16,
                        color: Colors.black,
                      ),
                    ),
            ]
      ),
                  ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/mtn.png',
                      width: screenWidth * 0.2,
                      height: screenWidth * 0.2,
                    ),
                    Image.asset('assets/glo.png',
                      width: screenWidth * 0.2,
                      height: screenWidth * 0.18,
                    ),
                    Image.asset('assets/9mobile.png',
                      width: screenWidth * 0.2,
                      height: screenWidth * 0.18,
                    ),
                    Image.asset('assets/airtel.png',
                      width: screenWidth * 0.2,
                      height: screenWidth * 0.18,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Padding(
                  padding: EdgeInsets.only(left:screenWidth * 0.05,),
                  child: Text(
                    "Phone number",
                    style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Color(0xdd1d1d1e)
                    ),
                  ),
                ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.04),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Select beneficiary",
                          style: TextStyle(
                            fontSize: screenWidth < 600 ? 8 : 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFFF24E00),
                          ),
                        ),
                      ),
                    ),
                ]
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Center(
                    child: SizedBox(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.09,
                            child: Stack(
                              children: [
                                TextFormField(
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0x6fb7bac0),
                              hintText: '+234__  __  _-',
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
                                ),
                      Positioned(
                        top: screenHeight * 0.040,
                        right: screenWidth * 0.04,
                        child:
                                GestureDetector(
                                  onTap: () {
                                    // Add action for icon button here
                                  },
                                  child: Icon(
                                    Icons.perm_contact_cal_outlined,
                                    color:  Color.fromRGBO(242, 78, 0, 0.5),
                                    size: screenWidth < 600 ? 12 : 15,
                                  ),
                                ),
                      )
                              ],
                            ),
                    ),
                ),

                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.05,),
                  child: Text(
                    "Amount",
                    style: TextStyle( fontSize: screenWidth * 0.035,
                        color: Color(0xdd1d1d1e)),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                Center(
                    child: SizedBox(
                width: screenWidth * 0.9,
       height: screenHeight * 0.09,
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
    height: screenHeight * 0.02,
    ),

                    Center(
                      child: Container(
    width: screenWidth * 0.9,
    height: screenHeight * 0.09,
                        decoration: BoxDecoration(
                          color: Color(0XFFF24E00),
                          borderRadius: BorderRadius.circular(screenWidth * 0.08),
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
                            style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.white),
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
