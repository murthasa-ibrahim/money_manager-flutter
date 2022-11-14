import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:money_manager/view/splash/splash.dart';
import 'package:money_manager/view_model/navbar_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavbarProvider>(create: (context) => NavbarProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        
        theme: ThemeData(textTheme: GoogleFonts.alikeTextTheme(
          
        )),
        home: const SplashView() ,
      ),
    );
  }
}
