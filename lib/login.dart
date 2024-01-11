import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crypto/main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/logo.png",
              height: 50,
              width: 50,
            ),
            Center(
              child: Text(
                "Create a password",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Column(
              children: <Widget>[
                CustomInputField(
                  hasIcon: true,
                  hint: "Password",
                  label: "New Password (min 8 chars)",
                  icon: Icons.visibility,
                ),
                SizedBox(
                  height: 21,
                ),
                CustomInputField(
                  hasIcon: false,
                  hint: "Confirmation",
                  label: "Confirm Password",
                ),
              ],
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Enable Touch ID at login",
                      style: Theme.of(context).textTheme.titleLarge),
                  CupertinoSwitch(
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                    value: switchValue,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  final String label, hint;
  final bool hasIcon;
  final IconData? icon;

  const CustomInputField(
      {super.key,
      required this.label,
      required this.hint,
      required this.hasIcon,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                ),
              ),
              hasIcon
                  ? IconButton(
                      icon: Icon(icon, color: Colors.white),
                      onPressed: () {},
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
