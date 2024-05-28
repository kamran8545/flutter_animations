import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({super.key, required this.title});

  final String title;

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  Widget switcherChild = Image.asset('assets/icons/bird.png', width: 80, height: 80);

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
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: switcherChild,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return RotationTransition(
                turns: animation,
                child: child,
              );
            },
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (switcherChild is Image) {
                  switcherChild = const Text("New Widget");
                } else {
                  switcherChild = Image.asset('assets/icons/bird.png', width: 80, height: 80);
                }
              });
            },
            child: const Text('Switch'),
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}
