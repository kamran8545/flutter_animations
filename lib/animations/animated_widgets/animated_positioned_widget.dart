import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({super.key, required this.title});

  final String title;

  @override
  State<AnimatedPositionedWidget> createState() => _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  double left = 0, top = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 120),
          Expanded(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(color: Colors.red),
                ),
                AnimatedPositioned(
                  left: left,
                  top: top,
                  duration: const Duration(milliseconds: 400),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(color: Colors.yellow),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (left == 0 || left == 20) {
                  left = -20;
                  top = -20;
                } else if (left == -20) {
                  left = 20;
                  top = 20;
                }
              });
            },
            child: const Text('Animate'),
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}
