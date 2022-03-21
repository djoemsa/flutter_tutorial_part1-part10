import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/first_to_ninth'),
                child: Text('1st to 9th')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/animated_container'),
                child: Text('Animated Container'))
          ],
        ),
      ),
    );
  }
}
