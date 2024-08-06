import 'package:flutter/material.dart';

class ScaleTransitionWidget extends StatefulWidget {
  final String title;

  const ScaleTransitionWidget({super.key, required this.title});

  @override
  State<ScaleTransitionWidget> createState() => _ScaleTransitionWidgetState();
}

class _ScaleTransitionWidgetState extends State<ScaleTransitionWidget> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    scaleAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(animationController);
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
          ScaleTransition(
            scale: CurvedAnimation(
              parent: scaleAnimation,
              curve: Curves.bounceInOut,
            ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Scale Transition'),
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
