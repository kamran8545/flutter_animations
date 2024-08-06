import 'package:flutter/material.dart';

import 'animations/animated_widgets/animated_align_widget.dart';
import 'animations/animated_widgets/animated_container_widget.dart';
import 'animations/animated_widgets/animated_cross_fade_widget.dart';
import 'animations/animated_widgets/animated_default_text_style_widget.dart';
import 'animations/animated_widgets/animated_opacity_widget.dart';
import 'animations/animated_widgets/animated_padding_widget.dart';
import 'animations/animated_widgets/animated_physical_model_widget.dart';
import 'animations/animated_widgets/animated_positioned_widget.dart';
import 'animations/animated_widgets/animated_rotation_widget.dart';
import 'animations/animated_widgets/animated_scale_widget.dart';
import 'animations/animated_widgets/animated_size_widget.dart';
import 'animations/animated_widgets/animated_slide_widget.dart';
import 'animations/animated_widgets/animated_switcher_widget.dart';
import 'animations/animated_widgets/animated_theme_widget.dart';
import 'animations/animated_widgets/tween_animation_builder_widget.dart';
import 'animations/transtions_wdigets/decorated_box_transition_widget.dart';
import 'animations/transtions_wdigets/fade_transition_widget.dart';
import 'animations/transtions_wdigets/positioned_transition_widget.dart';
import 'animations/transtions_wdigets/rotation_transition_widget.dart';
import 'animations/transtions_wdigets/scale_transition_widget.dart';
import 'animations/transtions_wdigets/size_transition_widget.dart';
import 'animations/transtions_wdigets/slide_transition_widget.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30, width: double.infinity,),
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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedSlideWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Slide'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedSizeWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Size'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedCrossFadeWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Cross Fade'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedPositionedWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Positioned'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedSwitcherWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Switcher'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedPhysicalModelWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Physical'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedDefaultTextStyleWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Default text style'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimatedThemeWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Animated Theme'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TweenAnimationBuilderWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Tween Animation Builder'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DecoratedBoxTransitionWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Decorated Box Transition'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FadeTransitionWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Fade Transition'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PositionedTransitionWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Positioned Transition'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RotationTransitionWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Rotation Transition'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScaleTransitionWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Scale Transition'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SizeTransitionWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Size Transition'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SlideTransitionWidget(title: widget.title),
                  ),
                );
              },
              child: const Text('Slide Transition'),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
