import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedSlideWidget extends StatefulWidget {
  const AnimatedSlideWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AnimatedSlideWidget> createState() => _AnimatedSlideWidgetState();
}

class _AnimatedSlideWidgetState extends State<AnimatedSlideWidget> {

  var offset = Offset(0, 0);
  
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
          AnimatedSlide(
            duration: Duration(milliseconds: 400),
            offset: offset,
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
                offset = Offset(Random().nextDouble() * 3, Random().nextDouble() * 3);
              });
            },
            child: const Text('Slide'),
          ),
        ],
      ),
    );
  }
}
