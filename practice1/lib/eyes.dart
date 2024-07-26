import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'joinmembership.dart';
import 'eyes.dart';

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscured = true; // 체크박스의 초기 상태

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: _isObscured,
        decoration: InputDecoration(
            hintText: '비밀번호를 입력하세요.',
            suffixIcon: IconButton(
              icon: Icon(_isObscured ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
            )),
        style: TextStyle(color: Colors.black, fontSize: 24));
  }
}
