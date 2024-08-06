import 'package:flutter/material.dart';

class DecoratedBoxTransitionWidget extends StatefulWidget {
  final String title;

  const DecoratedBoxTransitionWidget({super.key, required this.title});

  @override
  State<DecoratedBoxTransitionWidget> createState() => _DecoratedBoxTransitionWidgetState();
}

class _DecoratedBoxTransitionWidgetState extends State<DecoratedBoxTransitionWidget>
    with SingleTickerProviderStateMixin {
  late DecorationTween decorationTween;
  late AnimationController animationController;

  @override
  void initState() {
    decorationTween = DecorationTween(
      begin: BoxDecoration(color: Colors.red, border: Border.all(color: Colors.green, width: 2)),
      end: BoxDecoration(color: Colors.green, border: Border.all(color: Colors.red, width: 2)),
    );

    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 2000));
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
          DecoratedBoxTransition(
            decoration: decorationTween.animate(animationController),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Decorated Box Transition'),
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
