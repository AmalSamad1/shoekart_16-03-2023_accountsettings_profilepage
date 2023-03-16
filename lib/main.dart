import 'package:flutter/material.dart';
import 'package:shoe_kart/loginpage_test/Login/SignUp_test1.dart';
import 'package:shoe_kart/loginpage_test/login_test1.dart';
import 'package:shoe_kart/profile_page1/profilepage_test1.dart';
import 'package:shoe_kart/splashsceen_test/splashscreen.dart';

import 'Editprofile_test/editprofile_test1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute:'/' ,
      routes: {
        "/":(context) => SplashScreen1(),
        "/log":(context) => Log1(),
        "/signup":(context) => SignUp(),
        "/profile":(context) => ProfilePage(),
        "/editprofile":(context) => EditProfile()
      },

    );
  }
}




