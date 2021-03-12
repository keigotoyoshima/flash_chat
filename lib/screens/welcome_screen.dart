import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/component/login_register_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 200, 30, 250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Hero(
                          tag: 'flash',
                            child: Image.asset('images/logo.png')
                        ),
                        height: 80.0,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: TextLiquidFill(
                        boxHeight: 80,
                        boxBackgroundColor: Colors.black,
                        text: 'Flash chat',
                        textStyle: TextStyle(
                          decorationColor: Colors.white,
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                        ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            LoginRegisterWidget(
              color: Colors.lightBlueAccent,
              onPress:(){
                Navigator.pushNamed(context, '/login');
              },
              text: 'Log In',
            ),
            LoginRegisterWidget(
                color: Colors.blueAccent,
                onPress: () {
              Navigator.pushNamed(context, '/registration');
            },
                text:  'Register')

          ],
        ),
      ),
    );
  }
}
