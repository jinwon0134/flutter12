import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'joinmembership.dart';
import 'eyes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '로그인',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
          ),
        ),
        home: LogIn() // 로그인 화면으로 변경
        );
  }
}

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '로그인',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        // 앱 바 제목

        centerTitle: true,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Container(
              width: 800,
              height: 100,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '아이디를 입력하세요.',
                  ),
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 800,
              height: 100,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Center(
                child: PasswordTextField(),
              ),
            ),
            Container(
              width: 800,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckboxWidget(),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                        foregroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Joinmembership()),
                      );
                    },
                    child: const Text('비밀번호 찾기'),
                  ),
                ],
              ),
            ),
            Container(
              width: 800,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.purple, border: Border.all(color: Colors.grey)),
              child: Center(
                child: Text(
                  '로그인',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 800,
              height: 100,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Center(
                child: Text(
                  '회원가입',
                  style: TextStyle(color: Colors.purple, fontSize: 24),
                ),
              ),
            ),
          ])),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _isChecked = false; // 체크박스의 초기 상태

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: CheckboxListTile(
        title: Text('보안 접속'), // 체크박스 옆에 표시될 텍스트
        value: _isChecked, // 체크박스의 현재 상태를 나타내는 값
        onChanged: (bool? value) {
          setState(() {
            _isChecked = value ?? false; // 체크박스의 상태 변경
          });
        },
        controlAffinity:
            ListTileControlAffinity.leading, // 체크박스의 위치 설정 (leading: 왼쪽)
        activeColor: Colors.purple, // 체크됐을 때의 색상
        checkColor: Colors.white, // 체크 마크 색상
      ),
    );
  }
}
