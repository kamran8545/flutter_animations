import 'package:flutter/material.dart';

class SizeTransitionWidget extends StatefulWidget {
  final String title;

  const SizeTransitionWidget({super.key, required this.title});

  @override
  State<SizeTransitionWidget> createState() => _SizeTransitionWidgetState();
}

class _SizeTransitionWidgetState extends State<SizeTransitionWidget> with SingleTickerProviderStateMixin {
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
          SizeTransition(
            sizeFactor: CurvedAnimation(
              parent: animationController,
              curve: Curves.easeInOutCubic,
            ),
            child: const Center(
              child: Text('Size Transition'),
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
