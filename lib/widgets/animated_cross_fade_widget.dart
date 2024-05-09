import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {

  CrossFadeState crossFadeState = CrossFadeState.showFirst;

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
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 400),
            firstChild: Icon(Icons.error_outline, size: 80,),
            secondChild: Image.asset(
              'assets/icons/bird.png',
              height: 80,
              width: 80,
            ),
            crossFadeState: crossFadeState,
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if(crossFadeState.index == 0){
                  crossFadeState = CrossFadeState.showSecond;
                }else{
                  crossFadeState = CrossFadeState.showFirst;
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
