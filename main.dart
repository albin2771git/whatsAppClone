import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/calls.dart';
import 'package:whatsappclone/chats.dart';
import 'package:whatsappclone/status.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  void onItemTap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  var pages = [
    ChatsPage(),
    StatusPage(),
    CallsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WhatsApp")),
      body: pages.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.green,
          currentIndex: selectedindex,
          onTap: onItemTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.whatsapp),
                label: "Chats",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: "Status",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: "Calls",
                backgroundColor: Colors.green)
          ]),
    );
  }
}
