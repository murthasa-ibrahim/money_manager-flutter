import 'package:flutter/cupertino.dart';
import 'package:money_manager/view/home/home.dart';
import 'package:money_manager/view/income/income.dart';
import 'package:money_manager/view/profile/profile_view.dart';

class NavbarProvider extends ChangeNotifier{
  List<Widget> screens = const [
       HomeView(),
       IncomeView(),
       ProfileView()
  ];
  int selectedIndex =0;
  void changeIndex(int index){
      selectedIndex = index;
      notifyListeners();
  }
}