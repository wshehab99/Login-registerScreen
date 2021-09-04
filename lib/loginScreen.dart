import 'package:face/registerScreen.dart';
import 'package:flutter/material.dart';

Widget myBottom({
  String? hinttext,
  Icon? icon,
  TextEditingController? controller,
  TextInputType? textInputType,
  bool isVissable = false,
  Color color = Colors.black26,
}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    child: TextFormField(
      obscureText: isVissable,
      style: TextStyle(
        color: Colors.blue,
      ),
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(width: 0),
          ),
          prefixIcon: icon,
          contentPadding: EdgeInsets.all(20),
          hintText: hinttext),
    ),
  );
}

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Container(
          color: Colors.grey[100],
          child: Form(
              key: _formkey,
              child: ListView(
                children: [
                  Image(
                    image: AssetImage('assets/login.png'),
                    height: 200,
                  ),
                  Center(
                    child: Text(
                      'Welcome back!',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      'Log in your existant account of Q Allure',
                      style: TextStyle(
                          color: Colors.black26, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  myBottom(
                      hinttext: 'User name',
                      icon: Icon(Icons.person_outline),
                      controller: _userNameController),
                  SizedBox(
                    height: 20,
                  ),
                  myBottom(
                      hinttext: 'Password',
                      icon: Icon(Icons.lock_open_outlined),
                      controller: _passwordController),
                  ListTile(
                    trailing: TextButton(
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.black54),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 90),
                    height: 50,
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
                        'LOG IN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: Text('Or connect using'),
                  ),
                  Center(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.facebook_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('facebook')
                            ],
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.g_mobiledata_sharp,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Google')
                            ],
                          )),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Text("Don't have an account?"),
                      TextButton(
                        child: Text('Sign Up',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Register();
                          }));
                        },
                      ),
                    ]),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
