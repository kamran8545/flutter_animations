import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  List<Color> colors  = [Colors.red, Colors.green, Colors.brown, Colors.blue, Colors.purple, Colors.greenAccent, Colors.teal];
  List<Alignment> alignments = [Alignment.centerRight, Alignment.centerLeft, Alignment.topRight, Alignment.topLeft, Alignment.bottomLeft, Alignment.bottomRight];
  Color bgColor = Colors.red;
  double width = 100, height = 100;
  Alignment alignment = Alignment.center;
  EdgeInsets padding = EdgeInsets.zero;

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
          AnimatedContainer(
            padding: padding,
            alignment: alignment,
            color: bgColor,
            width: width,
            height: height,
            duration: const Duration(milliseconds: 400),
            child: Image.asset(
              'assets/icons/bird.png',
              height: 80,
              width: 80,
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                width = 100 + Random().nextInt(400).toDouble();
                height = 100 + Random().nextInt(500).toDouble();
                bgColor = colors[Random().nextInt(7)];
                alignment = alignments[Random().nextInt(6)];
                if(padding == EdgeInsets.zero){
                  padding = EdgeInsets.all(Random().nextInt(15).toDouble());
                }else{
                  padding = EdgeInsets.zero;
                }
              });
            },
            child: const Text('Animate'),
          ),
        ],
      ),
    );
  }
}
