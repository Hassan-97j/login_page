import 'package:flutter/material.dart';
import 'package:login_page/custom_widget/Mytextinput.dart';
import 'package:login_page/custom_widget/Mycirclebutton.dart';

import 'themes.dart';

class Register extends StatelessWidget {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 16),
          child: Text(
            'Create an account',textAlign: TextAlign.center,
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
          controller: _emailController,
          hintText: 'Email',
          prefixIcon: Icons.mail_outline,
        ),
        CustomTextField(
          controller: _passwordController,
          hintText: 'Password',
          prefixIcon: Icons.lock_outline,
          obscureText: true,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'REGISTER',
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
