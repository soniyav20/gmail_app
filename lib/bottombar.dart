import 'package:flutter/material.dart';
import 'package:gmail_clone/chat.dart';
import 'package:gmail_clone/main.dart';
import 'package:gmail_clone/meet.dart';
import 'package:gmail_clone/spaces.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        ind = index;
        setState(() {
          if (index == 0) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Home()),
              (Route<dynamic> route) => false,
            );
          } else if (index == 1) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Chat()),
              (Route<dynamic> route) => false,
            );
          } else if (index == 2) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Spaces()),
              (Route<dynamic> route) => false,
            );
          } else if (index == 3) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Meet()),
              (Route<dynamic> route) => false,
            );
          }
        });
      },
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: ind,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black87,
      backgroundColor: Colors.black26,
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedIconTheme: IconThemeData(color: Colors.black87),
      items: [
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.mail),
            icon: Icon(
              Icons.mail_outlined,
            ),
            label: 'Mail'),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.chat_bubble),
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
            ),
            label: 'Chat'),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.groups),
            icon: Icon(
              Icons.groups_outlined,
            ),
            label: 'Spaces'),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.videocam),
            icon: Icon(
              Icons.videocam_outlined,
            ),
            label: 'Meet')
      ],
    );
  }
}
