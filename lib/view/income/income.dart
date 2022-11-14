import 'package:flutter/material.dart';
import 'package:money_manager/view/widgets/gradient_icon.dart';

class IncomeView extends StatelessWidget {
  const IncomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [GradientIcon(Icons.person,size: 45,),
          Container(
            child: Center(child: Text('Your Balance',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
            margin: EdgeInsets.all(30),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                 Color.fromARGB(255, 236, 203, 104),
                 Colors.white,
                 Color.fromARGB(255, 236, 203, 104),
              ])
              ,
            ),
          ),
        ],
      )),
    );
  }
}