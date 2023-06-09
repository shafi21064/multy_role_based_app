import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    islogin();
  }

  void islogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool islogin = sp.getBool('islogin') ?? false;

    if (islogin){
      Timer(const Duration(seconds: 3), (){
        Navigator.of(context).pushReplacementNamed('/homepage');
      });
    }else
      Timer(const Duration(seconds: 3), (){
        Navigator.of(context).pushReplacementNamed('/login');
      });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        height: double.infinity,
        fit: BoxFit.fitHeight,
          image: NetworkImage(
              'https://images.pexels.com/photos/16885428/pexels-photo-16885428/free-photo-of-close-up-of-an-engaged-couple-holding-hands.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
    );
  }
}
