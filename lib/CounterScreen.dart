
import 'package:flutter/material.dart';
class Counterscreen extends StatefulWidget {
  const Counterscreen({super.key});

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Center(
      child: Column(mainAxisAlignment:MainAxisAlignment.center,children:[Text("count: $counter",style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold)),ElevatedButton(onPressed:(){setState(() {counter++;
      });}, child: Text("increase",style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold)))]),
    ));
  }
}

