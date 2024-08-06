import 'package:flutter/material.dart';

class SlideTransitionWidget extends StatefulWidget {
  final String title;

  const SlideTransitionWidget({super.key, required this.title});

  @override
  State<SlideTransitionWidget> createState() => _SlideTransitionWidgetState();
}

class _SlideTransitionWidgetState extends State<SlideTransitionWidget> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(-0.3, -0.3),
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
      body: Stack(
        children: [
          SlideTransition(
            position: offsetAnimation,
            child: const Center(
              child: Text('Slide Transition'),
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
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
