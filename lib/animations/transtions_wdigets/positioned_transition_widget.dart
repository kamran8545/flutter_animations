import 'package:flutter/material.dart';

class PositionedTransitionWidget extends StatefulWidget {
  final String title;

  const PositionedTransitionWidget({super.key, required this.title});

  @override
  State<PositionedTransitionWidget> createState() => _PositionedTransitionWidgetState();
}

class _PositionedTransitionWidgetState extends State<PositionedTransitionWidget> with SingleTickerProviderStateMixin {
  late RelativeRectTween rectTween;
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
    var mediaQuery = MediaQuery.of(context);
    rectTween = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, -mediaQuery.size.width, -mediaQuery.size.height),
      end: RelativeRect.fromLTRB(mediaQuery.size.width - 150, mediaQuery.size.height - 150, 0, 0),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: rectTween.animate(
              CurvedAnimation(
                parent: animationController,
                curve: Curves.elasticInOut,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Positioned Transition'),
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
