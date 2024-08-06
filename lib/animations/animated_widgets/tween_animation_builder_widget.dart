import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key, required this.title});

  final String title;

  @override
  State<TweenAnimationBuilderWidget> createState() => _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState extends State<TweenAnimationBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          duration: const Duration(milliseconds: 2000),
          tween: BorderTween(
            begin: Border.all(color: Colors.black, width: 3),
            end: Border.all(color: Colors.red, width: 3),
          ),
          child: Image.asset(
            'assets/icons/bird.png',
          ),
          builder: (BuildContext context, Border? border, Widget? child) {
            return Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(border: border,),
              child: child!,
            );
          },
        ),
      ),
    );
  }
}
