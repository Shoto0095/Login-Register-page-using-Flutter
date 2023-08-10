import 'package:flutter/material.dart';

class Weregister extends StatelessWidget {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/register.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(
            left: 6,
            right: 0,
            top: 7,
            bottom: 0,
          ),
          child: Column(children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 33,
                  backgroundColor: Colors.blue[300],
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      icon: Icon(
                        Icons.arrow_back,
                      )),
                ),
                SizedBox(width: 10),
                Text('Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                right: 0,
                top: MediaQuery.of(context).size.height * 0.232,
                bottom: 0,
              ),
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/sukuna.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                right: 0,
                top: 5.0,
                bottom: 0,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(
                        color: Colors.black, fontSize: 17, height: 2)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                right: 0,
                top: 7.0,
                bottom: 0,
              ),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      height: 2,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
                bottom: 0,
                left: 0,
                right: 0,
              ),
              child: Row(children: [
                Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 190),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.red[700],
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, bottom: 0, top: 17, right: 0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  minimumSize: MaterialStateProperty.all(Size(390.0, 46.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    height: 3.5,
                  )),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text('Sign In'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60,
                right: 0,
                top: 12,
                bottom: 0,
              ),
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.green[700]),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              height: 3.0, fontWeight: FontWeight.bold))),
                      child: Text('Sign Up')),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                right: 0,
                top: 150,
                bottom: 0,
              ),
              child: Column(
                children: [
                  Text(
                    'By clicking "Sign In" above, you agree to the',
                    style: TextStyle(),
                  ),
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
