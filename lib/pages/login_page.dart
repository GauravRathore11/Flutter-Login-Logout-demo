import 'package:flutter/material.dart';
import 'package:login_demo/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              var pref = await SharedPreferences.getInstance();
              pref.setBool("LOGIN_VAL", true);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text("Login")),
      ),
    );
  }
}
