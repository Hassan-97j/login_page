import 'package:flutter/material.dart';
import 'package:login_page/custom_widget/Mycirclebutton.dart';
import 'package:login_page/custom_widget/Mytextinput.dart';

import 'themes.dart';

class Login extends StatelessWidget {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 16),
          child: Text(
            'Log in to your account',textAlign: TextAlign.center,
            style: setTextStyle(
                color: primaryColor, weight: FontWeight.bold, size: 18),
          ),
        ),
        CustomTextField(
          controller: _userController,
          hintText: 'Username',
          prefixIcon: Icons.perm_identity,
        ),
        CustomTextField(
          controller: _passwordController,
          hintText: 'Password',
          prefixIcon: Icons.lock_outline,
          obscureText: true,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: FlatButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style:
                    setTextStyle(color: primaryColor, weight: FontWeight.w500),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: RaisedButton(
              onPressed: () {
               // Navigator.of(context).pushReplacement(
                 //   MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'LOGIN',
                style: setTextStyle(
                    color: secondaryColor, weight: FontWeight.w500),
              ),
              color: Colors.red,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Divider(
            color: Colors.red,
            height: 0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MycircleButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/fb_logo.png',
                color: Colors.white,
              ),
              bgColor: Colors.blue[800],
            ),
            MycircleButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/google_logo.png',
                color: Colors.blue[800],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
