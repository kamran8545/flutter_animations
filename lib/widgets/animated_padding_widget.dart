import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({super.key, required this.title});
  final String title;

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {

  EdgeInsets padding = EdgeInsets.zero;

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
          Container(
            color: Colors.deepPurple,
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 400),
              padding: padding,
              child: Image.asset(
                'assets/icons/bird.png',
                height: 80,
                width: 80,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if(padding == EdgeInsets.zero){
                  padding = EdgeInsets.all(Random().nextInt(50).toDouble());
                }else{
                  padding = EdgeInsets.zero;
                }
              });
            },
            child: const Text('Animate'),
          ),
        ],
      ),
    );
  }
}
