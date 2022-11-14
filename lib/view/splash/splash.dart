import 'dart:async';

import 'package:flutter/material.dart';
import 'package:money_manager/view/navbar/navbar.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
   Timer(const Duration(seconds: 2), () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Navbar(),)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body:  SafeArea(child:  Center(child: Text("Money Manager"),)
      ),
     );
  }
}