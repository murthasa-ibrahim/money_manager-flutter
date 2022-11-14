import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/const/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Row(
            children: const [
              CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Andrio')
            ],
          ),
          actions: const [
            Icon(Icons.notifications),
            SizedBox(
              width: kdefaultPadding / 2,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CupertinoSearchTextField(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: kdefaultPadding),
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kdefaultPadding / 2),
                  gradient: const LinearGradient(colors: colorGradient),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Your balance',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '₹ 16540.00',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.1),
                      borderRadius: BorderRadius.circular(kdefaultPadding / 2)),
                  child: Center(
                    child: Text(
                      'murh theasdfkajs',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
