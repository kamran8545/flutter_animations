import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key, required this.title});

  final String title;

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double rotate = 0;
  int currentRotation = 0;

  List<double> rotations = [
    /// Anti clock wise rotation
    0.135,
    0.25,
    0.385,
    0.5,
    0.635,
    0.75,
    0.885,
    1.0,
    0.0,

    /// Clock wise rotation
    -0.135,
    -0.25,
    -0.385,
    -0.5,
    -0.635,
    -0.75,
    -0.885,
    -1.0,
    0.0,
    3.0
  ];

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
          AnimatedRotation(
            duration: const Duration(milliseconds: 1300),
            turns: rotate,
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
                rotate = rotations[currentRotation++];
                if (currentRotation == rotations.length) {
                  currentRotation = 0;
                }
                print(rotate);
              });
            },
            child: const Text('Rotate'),
          ),
        ],
      ),
    );
  }
}
