import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PageTransitionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Transition')),
      body: Center(
        child: ElevatedButton(
          child: Text('Next Screen'),
          onPressed: () => Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeftWithFade,
              child: Scaffold(
                appBar: AppBar(),
                body: Center(child: Text('New Screen')),
              ),
            ),
          ),
        ),
      ),
    );
  }
}