import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {

  double width = 80, height = 80;

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
          AnimatedSize(
            reverseDuration: Duration(milliseconds: 400),
            duration: Duration(milliseconds: 400),
            child: Image.asset(
              'assets/icons/bird.png',
              height: height,
              width: width,
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if(height == 80) {
                  height = 160;
                  width = 160;
                }else{
                  height = 80;
                  width = 80;
                }
              });
            },
            child: const Text('Animate Size'),
          ),
        ],
      ),
    );
  }
}
