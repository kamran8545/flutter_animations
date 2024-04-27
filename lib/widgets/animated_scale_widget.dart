import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedScaleWidget extends StatefulWidget {
  const AnimatedScaleWidget({super.key, required this.title});
  final String title;

  @override
  State<AnimatedScaleWidget> createState() => _AnimatedScaleWidgetState();
}

class _AnimatedScaleWidgetState extends State<AnimatedScaleWidget> {

  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedScale(
            duration: const Duration(milliseconds: 400),
            scale: scale,
            filterQuality: FilterQuality.high,
            child: Image.asset(
              'assets/icons/bird.png',
              height: 80,
              width: 80,
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                scale = 0.5 + Random().nextInt(25).toDouble();
              });
            },
            child: const Text('Animate Scale'),
          ),
        ],
      ),
    );
  }
}
