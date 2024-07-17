import 'package:flutter/material.dart';
import "./HomePage.dart";

import "./CounterScreen.dart";
    class BottomBar extends StatefulWidget {
      const BottomBar({super.key});

      @override
      State<BottomBar> createState() => _BottomBarState();
    }

    class _BottomBarState extends State<BottomBar> {
      List screens=[HomeScreen(),Counterscreen()];

int selectedValue=0;
      @override
      Widget build(BuildContext context) {
        return   Scaffold( body:SafeArea(child:screens[selectedValue]),
            bottomNavigationBar:BottomNavigationBar( selectedItemColor:Colors.cyan,currentIndex:selectedValue,onTap:(value){setState(() {
              selectedValue=value;
            });},
                items: [BottomNavigationBarItem(icon:Icon(Icons.home),label: "home"),BottomNavigationBarItem(icon:Icon(Icons.countertops),label:"counter")]));
      }
    }
