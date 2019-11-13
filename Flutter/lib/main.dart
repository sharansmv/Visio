import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';

void main() {
  runApp(Visio());
}

class Visio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                color: Colors.white,
                alignment: Alignment.bottomLeft,
                child: Text(
                  'VISIO',
                  style: Logo,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 50, 22, 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200.0)),
                  color: Primaryback,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    Image.asset('loginart.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Login_TextBoxes(),
                        SizedBox(
                          height: 15,
                        ),
                        Login_TextBoxes(),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 20, 0),
                          child: Text(
                            'login',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Login_TextBoxes extends StatelessWidget {
  const Login_TextBoxes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 46,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
