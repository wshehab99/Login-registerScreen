import 'loginScreen.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          maintainBottomViewPadding: true,
          child: Container(
            color: Colors.grey[100],
            child: Form(
              child: ListView(
                children: [
                  Container(
                    child: BackButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Center(
                    child: Text(
                      "Let's Get Started!",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      'Create an account to Q Allure to get all features',
                      style: TextStyle(
                          color: Colors.black26, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  myBottom(
                      hinttext: 'User Name', icon: Icon(Icons.person_outline)),
                  SizedBox(
                    height: 20,
                  ),
                  myBottom(hinttext: 'Email', icon: Icon(Icons.email_outlined)),
                  SizedBox(
                    height: 20,
                  ),
                  myBottom(
                      hinttext: 'Phone',
                      icon: Icon(Icons.phone_android_outlined)),
                  SizedBox(
                    height: 20,
                  ),
                  myBottom(
                      hinttext: 'Password',
                      icon: Icon(Icons.lock_open_outlined)),
                  SizedBox(
                    height: 20,
                  ),
                  myBottom(
                      hinttext: 'Confirm Password',
                      icon: Icon(Icons.lock_open_outlined)),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 180,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 90),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(35)),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25)))),
                      onPressed: () => null,
                      child: Text(
                        'CREATE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Already have an account?'),
                        TextButton(onPressed: () {}, child: Text('Login here'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
