import 'package:flutter/material.dart';
import 'package:money_manager/view_model/navbar_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/gradient_icon.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavbarProvider>(
         builder: (_, provider, __) => 
         (provider.screens[provider.selectedIndex])),
      bottomNavigationBar: 
         
         Consumer<NavbarProvider>(
          builder: (context, value, child) => 
            BottomNavigationBar(
              backgroundColor: Colors.black,
            currentIndex:value.selectedIndex ,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            onTap: (index)=>value.changeIndex(index) ,
            items:const [
            BottomNavigationBarItem(icon: GradientIcon(Icons.home_max_sharp),label: ''),
            BottomNavigationBarItem(icon: GradientIcon(Icons.money_rounded),label: ''),
            BottomNavigationBarItem(icon: GradientIcon(Icons.person_sharp),label: '')
                 ]),
         ),
      
    );
  }
}

  