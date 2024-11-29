import 'package:flutter/material.dart';
import 'package:login_demo/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () async{
          var pref = await SharedPreferences.getInstance();
          pref.setBool("LOGIN_VAL", false);
          Navigator.pushReplacement(context, 
            MaterialPageRoute(builder: (context) => LoginPage()));
        }, child: Text("Log Out")),
      ),
    );
  }
}
