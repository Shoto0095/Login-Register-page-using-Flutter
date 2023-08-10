import 'package:flutter/material.dart';

class Welogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.28,
              right: 30.0,
              left: 30.0,
            ),
            child: Column(children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/wow.png'),
                  radius: 60.0,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  minimumSize: MaterialStateProperty.all(Size(370.0, 46.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                      letterSpacing: 3.0,
                      // fontWeight: FontWeight.bold,
                      height: 3.5)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Text('Login with Email'),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(370.0, 46.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                      letterSpacing: 3.0,
                      // fontWeight: FontWeight.bold,
                      height: 3.5)),
                ),
                onPressed: () {},
                child: Text('Continue with Apple'),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  minimumSize: MaterialStateProperty.all(Size(370.0, 46.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                      letterSpacing: 3.0,
                      // fontWeight: FontWeight.bold,
                      height: 3.5)),
                ),
                onPressed: () {},
                child: Text('Continue with facebook'),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.red[500]),
                  minimumSize: MaterialStateProperty.all(Size(370.0, 46.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                      letterSpacing: 3.0,
                      // fontWeight: FontWeight.bold,
                      height: 3.5)),
                ),
                onPressed: () {},
                child: Text('Continue with Google'),
              ),
            ]),
          )),
    );
  }
}
