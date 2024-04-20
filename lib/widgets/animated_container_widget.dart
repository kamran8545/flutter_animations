
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  List<Color> colors = [Colors.yellow, Colors.green, Colors.blue, Colors.grey, Colors.greenAccent, Colors.deepOrange, Colors.deepPurple, Colors.brown, Colors.red];
  List<Alignment> alignments = [Alignment.center, Alignment.topLeft, Alignment.centerLeft, Alignment.bottomLeft, Alignment.topRight, Alignment.centerRight, Alignment.bottomRight];

  double containerHeight = 100, containerWidth = 100;
  Color containerColor = Colors.green;
  Alignment containerAlignment = Alignment.center;
  EdgeInsets containerPadding = EdgeInsets.zero;

  
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
            height: containerHeight,
            width: containerWidth,
            color: containerColor,
            alignment: containerAlignment,
            padding: containerPadding,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInQuint,
            child: const Text(
              'Some Text',
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                containerHeight = 100 + Random().nextInt(400).toDouble();
                containerWidth = 100 + Random().nextInt(500).toDouble();
                containerColor = colors[Random().nextInt(9)];
                containerAlignment = alignments[Random().nextInt(7)];
                if(containerPadding == EdgeInsets.zero){
                  containerPadding = EdgeInsets.all(10);
                }else{
                  containerPadding = EdgeInsets.zero;
                }
              });
            },
            child: const Text('Change Alignment'),
          ),
        ],
      ),
    );
  }
}
