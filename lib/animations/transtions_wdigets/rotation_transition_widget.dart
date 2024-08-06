import 'package:flutter/material.dart';

class RotationTransitionWidget extends StatefulWidget {
  final String title;

  const RotationTransitionWidget({super.key, required this.title});

  @override
  State<RotationTransitionWidget> createState() => _RotationTransitionWidgetState();
}

class _RotationTransitionWidgetState extends State<RotationTransitionWidget> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
          RotationTransition(
            turns: animationController,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Rotation Transition'),
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                if (animationController.isCompleted) {
                  animationController.reverse();
                } else {
                  animationController.forward();
                }
              },
              child: const Text('Animate'),
            ),
          ),
        ],
      ),
    );
  }
}
