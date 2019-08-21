import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'styles/custom_scroll_behavior.dart';
import 'custom_widgets/custom_underlined_text.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Expanded(
                          flex: 3,
                          child: const SizedBox(),
                        ),
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 55,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "There",
                              style: TextStyle(
                                height: 0.7,
                                color: Colors.black,
                                fontSize: 55,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 25,
                                left: 3,
                              ),
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xff00d859),
                              ),
                            ),
                          ],
                        ),
                        const Expanded(
                          flex: 2,
                          child: const SizedBox(),
                        ),
                        TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            labelText: "EMAIL",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: const Color(0xffa9a7a8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xffa9a7a8),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          cursorColor: Colors.black,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            labelText: "PASSWORD",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: const Color(0xffa9a7a8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color(0xffa9a7a8),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomUnderlinedText(
                            text: "Forgot Password",
                            textColor: const Color(0xff00d859),
                            underlineColor: const Color(0x8800d859),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: const SizedBox(),
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50),
                                right: Radius.circular(50),
                              ),
                            ),
                            color: const Color(0xff00d859),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50),
                                right: Radius.circular(50),
                              ),
                            ),
                            color: Colors.white,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 6,
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.facebookF,
                                    size: 20,
                                  ),
                                ),
                                Text(
                                  "Log in with Facebook",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: const SizedBox(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "New to Spotify? ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            CustomUnderlinedText(
                              text: "Register",
                              textColor: const Color(0xff00d859),
                              underlineColor: const Color(0x8800d859),
                            ),
                          ],
                        ),
                        const Expanded(
                          flex: 1,
                          child: const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
