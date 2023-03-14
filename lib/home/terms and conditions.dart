import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.cancel,
              color: Colors.black45,
            ),
          ),
          backgroundColor: Color(0x86FFFFFF),
          title: const Text('Terms and Conditions for Ace',
            style: TextStyle(
            fontSize: 15,
            color: Color(0xFFF24E00),
    ),
        ),
        ),
        body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text(
    'Welcome to our banking app! We are pleased to '
    'offer you access to our services through this mobile application.'
    'Please carefully read and understand the following terms'
    ' and conditions that govern the use of our banking app.',
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
    ),
    const SizedBox(height: 16),
    const Text(
    '1. Acceptance of Terms and Conditions'
        'By using our banking app, you agree to be bound by '
        'these terms and conditions. If you do not agree to'
        'these terms and conditions, please do not use our banking app.',
    ),
        const SizedBox(height: 10),
      const Text(
    '2. Eligibility'
        'To use our banking app, you must be 18 years or older'
        'and a resident of the country where the app is offered.'
       'By using our banking app, you confirm that you meet'
       ' these eligibility requirements.'
      ),
      const SizedBox(height: 10),
      const Text(

     '3.  Account Registration and Access'
          'You must register an account with us to use our banking'
          ' app. You are responsible for keeping your account'
          ' information up to date and for maintaining the confidentiality of your login credentials. We reserve the'
          ' right to terminate or suspend your access to our banking app if we believe'
          ' that you have violated these terms and conditions.',

    ),
    const SizedBox(height: 10),
    const Text(
    '4.  Account Registration and Access'
    'You must register an account with us to use our banking'
    ' app. You are responsible for keeping your account'
    ' information up to date and for maintaining the confidentiality of your login credentials. We reserve the'
    ' right to terminate or suspend your access to our banking app if we believe'
    ' that you have violated these terms and conditions.',

    ),
    const SizedBox(height: 10),
    const Text(
    '5.  Account Registration and Access'
    'You must register an account with us to use our banking'
    ' app. You are responsible for keeping your account'
    ' information up to date and for maintaining the confidentiality of your login credentials. We reserve the'
    ' right to terminate or suspend your access to our banking app if we believe'
    ' that you have violated these terms and conditions.',

    ),
    const SizedBox(height: 10),
    const Text(
    '6.  Account Registration and Access'
    'You must register an account with us to use our banking'
    ' app. You are responsible for keeping your account'
    ' information up to date and for maintaining the confidentiality of your login credentials. We reserve the'
    ' right to terminate or suspend your access to our banking app if we believe'
    ' that you have violated these terms and conditions.',
    ),
            const SizedBox(height: 10),
            const Text(
                '7.  Account Registration and Access'
                    'You must register an account with us to use our banking'
                    ' app. You are responsible for keeping your account'
                    ' information up to date and for maintaining the confidentiality of your login credentials. We reserve the'
                    ' right to terminate or suspend your access to our banking app if we believe'
                    ' that you have violated these terms and conditions.',
            ),
                    const SizedBox(height: 10),
    const Text(
    '8.  Account Registration and Access'
    'You must register an account with us to use our banking'
    ' app. You are responsible for keeping your account'
    ' information up to date and for maintaining the confidentiality of your login credentials. We reserve the'
    ' right to terminate or suspend your access to our banking app if we believe'
    ' that you have violated these terms and conditions.',
    ),
      const SizedBox(height: 10),
      const Text(
        '9.  Account Registration and Access'
            'You must register an account with us to use our banking'
            ' app. You are responsible for keeping your account'
            ' information up to date and for maintaining the confidentiality of your login credentials. We reserve the'
            ' right to terminate or suspend your access to our banking app if we believe'
            ' that you have violated these terms and conditions.',
      ),
      const SizedBox(height: 10),
      const Text(
        '10.  Account Registration and Access'
            'You must register an account with us to use our banking'
            ' app. You are responsible for keeping your account'
            ' information up to date and for maintaining the confidentiality of your login credentials. We reserve the'
            ' right to terminate or suspend your access to our banking app if we believe'
            ' that you have violated these terms and conditions.',
    ),
    const SizedBox(height: 8),
    const Text(
    'Thank you for using our banking app. If you have any'
    ' questions about these terms and conditions, please contact us.'
    )
            ]
    )
    )
    );
  }
}