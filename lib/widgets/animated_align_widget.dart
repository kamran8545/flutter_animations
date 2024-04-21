
import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {

  Alignment imageAlignment = Alignment.center;

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
          AnimatedAlign(
            alignment: imageAlignment,
            duration: const Duration(milliseconds: 300),
            child: Image.asset(
              "assets/icons/bird.png",
              height: 80,
              width: 80,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if(imageAlignment == Alignment.bottomLeft){
                  imageAlignment = Alignment.bottomRight;
                }else{
                  imageAlignment = Alignment.bottomLeft;
                }
              });
            },
            child: const Text("Change Alignment"),
          ),
        ],
      ),
    );
  }
}
