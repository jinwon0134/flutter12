import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';

class Joinmembership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비밀번호찾기'),
      ),
      body: Center(
        child: Text(
          '비밀번호 찾기',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
