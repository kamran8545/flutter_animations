import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  final String title;

  const FadeTransitionWidget({super.key, required this.title});

  @override
  State<FadeTransitionWidget> createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
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
          FadeTransition(
            opacity: animationController,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Fade Transition'),
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              if (animationController.isCompleted) {
                animationController.reverse();
              } else {
                animationController.forward();
              }
            },
            child: const Text('Animate'),
          ),
        ],
      ),
    );
  }
}
