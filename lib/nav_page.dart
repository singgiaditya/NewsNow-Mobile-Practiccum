import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/bookmark.dart';
import 'package:myapp/home.dart';
import 'package:myapp/profile.dart';
import 'package:myapp/core/themes/mycolors.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  final pagesList = [Home(), Bookmark(), Profile()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesList[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedLabelStyle: GoogleFonts.inter(color: darkColor),
        unselectedLabelStyle:
            GoogleFonts.inter(color: darkColor.withOpacity(0.5)),
        selectedItemColor: darkColor,
        unselectedItemColor: darkColor.withOpacity(0.5),
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_outlined), label: "News"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: "Bookmark"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
