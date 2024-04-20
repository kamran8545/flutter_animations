
import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  Alignment textAlignment = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment: textAlignment,
              curve: Curves.easeInQuint,
              child: const Text(
                'Some Text',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if(textAlignment == Alignment.center){
                  textAlignment = Alignment.bottomLeft;
                }else{
                  textAlignment = Alignment.center;
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
