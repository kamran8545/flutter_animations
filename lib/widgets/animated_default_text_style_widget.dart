import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key, required this.title});

  final String title;

  @override
  State<AnimatedDefaultTextStyleWidget> createState() => _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState extends State<AnimatedDefaultTextStyleWidget> {
  TextStyle defaultTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

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
          AnimatedDefaultTextStyle(
            style: defaultTextStyle,
            duration: const Duration(milliseconds: 400),
            child: const Text('Animated Default Text Style'),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (defaultTextStyle.fontSize == 13) {
                  defaultTextStyle = const TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                  );
                } else {
                  defaultTextStyle = const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  );
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
