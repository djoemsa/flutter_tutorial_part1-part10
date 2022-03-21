import 'dart:html';

import 'package:flutter/material.dart';

// Stateful widget
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('1st to 9th')),
        body: Center(
          // Container Widget
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            color: Color(0xfff5f6fa),
            padding: EdgeInsets.only(top: 10),
            //Listview
            child: ListView(
              children: [
                //Row Widget
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.add(Text(
                            'DATA KE' + counter.toString(),
                            //Text Widget + Text Style
                            style: TextStyle(
                                fontFamily: 'ChakraPetch',
                                fontStyle: FontStyle.italic,
                                fontSize: 30),
                          ));
                          counter++;
                        });
                      },
                      child: Text(
                        'ADD Text',
                        style: TextStyle(
                            fontFamily: "Charmonman",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      },
                      child: Text(
                        'DEL Text',
                        style: TextStyle(
                            fontFamily: "Charmonman",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                //Column Widget
                Column(
                  children: widgets,
                )
              ],
            ),
          ),
        ));
  }
}
