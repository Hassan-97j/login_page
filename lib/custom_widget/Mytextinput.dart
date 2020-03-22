import 'package:flutter/material.dart';
import 'package:login_page/themes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        elevation: 2,
        child: TextField(
          style: setTextStyle(color: primaryTextColor, size: 15),
          obscureText: obscureText,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: primaryColor,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.all(8),
            hintStyle: setTextStyle(color: primaryTextColor, size: 15),
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.black,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
