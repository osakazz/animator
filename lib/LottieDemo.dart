import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieDemo extends StatefulWidget {
  @override
  _LottieDemoState createState() => _LottieDemoState();
}

class _LottieDemoState extends State<LottieDemo> with TickerProviderStateMixin {
  bool isPlaying = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lottie Animation')),
      body: Column(
        children: [
          Expanded(child: Lottie.asset('asset/fire.json')),
          ElevatedButton(
            child: Text(isPlaying ? 'Pause' : 'Play'),
            onPressed: () => setState(() => isPlaying = !isPlaying),
          ),
        ],
      ),
    );
  }
}
