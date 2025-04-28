import 'package:animator/HeroDemo.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'ContainerDemoState.dart';
import 'LottieDemo.dart';
import 'OpacityDemo.dart';
import 'PageTransitionDemo.dart';

void main() => runApp(MaterialApp(home: MainMenu()));

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation Demo')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _buildMenuButton(context, 'Hero Animation', HeroDemo()),
            _buildMenuButton(context, 'Lottie Animation', LottieDemo()),
            _buildMenuButton(context, 'Animated Container', ContainerDemo()),
            _buildMenuButton(context, 'Animated Opacity', OpacityDemo()),
            _buildMenuButton(context, 'Page Transition', PageTransitionDemo()),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String text, Widget screen) {
    return ElevatedButton(
        child: Text(text),
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen)
    , ));
    }
}