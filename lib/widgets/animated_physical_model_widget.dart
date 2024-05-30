import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({super.key, required this.title});

  final String title;

  @override
  State<AnimatedPhysicalModelWidget> createState() => _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState extends State<AnimatedPhysicalModelWidget> {
  Color backgroundColor = Colors.red;
  double elevation = 3;

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
          AnimatedPhysicalModel(shape: BoxShape.rectangle,
          elevation: elevation,
          color: backgroundColor,
          shadowColor: Colors.black,
          duration: const Duration(milliseconds: 400),
          child: Image.asset('assets/icons/bird.png'),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if(elevation == 3){
                  backgroundColor = Colors.greenAccent;
                  elevation = 15;
                }else{
                  backgroundColor = Colors.red;
                  elevation = 3;
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
