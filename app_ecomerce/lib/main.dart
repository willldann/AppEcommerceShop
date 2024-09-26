
import 'package:app_ecomerce/pages/HomePage.dart';
import 'package:app_ecomerce/pages/accountPage.dart';
import 'package:app_ecomerce/pages/cartPage.dart';
import 'package:app_ecomerce/pages/chatdetail.dart';
import 'package:app_ecomerce/pages/itemsdetailpage.dart';
import 'package:app_ecomerce/pages/listchat.dart';
import 'package:app_ecomerce/pages/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        '/': (context) => Homepage(),
        "cartPage": (context) => CartPage(),
        "AccountPage": (context) => AccountPage(),
        "LoginPage": (context) => LoginPage(),
        "itemsPage": (context) => itemsdetailpage(),
        "ListChat": (context) => ChatListPage(),
        "ChatDetail": (context) => ChatScreen(contactName: 'Nike Official'),
      },
    );
  }
}
