import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class _ContainerDemoState extends State<ContainerDemo> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container')),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _expanded ? 200 : 100,
              height: _expanded ? 200 : 100,
              color: _expanded ? Colors.blue : Colors.red,
            ),
            ElevatedButton(
              child: Text('Toggle Size'),
              onPressed: () => setState(() => _expanded = !_expanded),
            ),
          ],
        ),
      ),
    );
  }
}
class ContainerDemo extends StatefulWidget {
  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

