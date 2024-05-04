import 'package:flutter/material.dart';
import 'package:flutter_animations/widgets/animated_align_widget.dart';
import 'package:flutter_animations/widgets/animated_container_widget.dart';
import 'package:flutter_animations/widgets/animated_opacity_widget.dart';
import 'package:flutter_animations/widgets/animated_padding_widget.dart';
import 'package:flutter_animations/widgets/animated_rotation_widget.dart';
import 'package:flutter_animations/widgets/animated_scale_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      showSemanticsDebugger: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedAlignWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Align'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedContainerWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Container'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedOpacityWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Opacity'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedPaddingWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Padding'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedScaleWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Scale'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedRotationWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Rotation'),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
