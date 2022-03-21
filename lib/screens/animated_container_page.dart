import 'package:flutter/material.dart';
import 'dart:math';

class animatedContainer extends StatefulWidget {
  @override
  _animatedContainerState createState() => _animatedContainerState();
}

class _animatedContainerState extends State<animatedContainer> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container')),
      body: Center(
        child: Container(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(
                255,
                random.nextInt(255),
                random.nextInt(255),
                random.nextInt(255),
              ),
              duration: Duration(milliseconds: 100),
              width: 50.0 + random.nextInt(150),
              height: 50.0 + random.nextInt(150),
            ),
          ),
        ),
      ),
    );
  }
}
