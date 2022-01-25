import "package:flutter/material.dart";
import 'package:test_tut/pages/home.dart';
import 'package:test_tut/routes/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var username = '';
  var changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Welcome $username!',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) => setState(() {
                    username = value;
                  }),
                  decoration: InputDecoration(
                    labelText: 'Enter Username',
                    hintText: 'Username',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                    hintText: 'Username',
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, AppRoutes.homeRoute);
                //     },
                //     child: Text('Login'),
                //     style: TextButton.styleFrom(
                //         textStyle: TextStyle(fontSize: 20),
                //         minimumSize: Size(120, 50)))
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(milliseconds: 500));
                    Navigator.pushNamed(context, AppRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 30.0 : 5.0)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
