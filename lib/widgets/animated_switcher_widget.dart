import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({super.key, required this.title});

  final String title;

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  Widget switcherWidget = Image.asset('assets/icons/bird.png');

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
            child: switcherWidget,
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
                if (switcherWidget is Image) {
                  switcherWidget = const Text('New Widget');
                } else {
                  switcherWidget = Image.asset('assets/icons/bird.png');
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
