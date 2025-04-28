import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  @override
  OpacityDemoState createState() => OpacityDemoState();
}

class OpacityDemoState extends State<OpacityDemo> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Opacity')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: visible ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: Text(
                'Hello Flutter',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Toggle Visibility'),
              onPressed: () => setState(() => visible = !visible),
            ),
          ],
        ),
      ),
    );
  }
}