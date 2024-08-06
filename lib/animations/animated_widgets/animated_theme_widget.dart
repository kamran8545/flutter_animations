import 'package:flutter/material.dart';

class AnimatedThemeWidget extends StatefulWidget {
  const AnimatedThemeWidget({super.key, required this.title});
  final String title;

  @override
  State<AnimatedThemeWidget> createState() => _AnimatedThemeWidgetState();
}

class _AnimatedThemeWidgetState extends State<AnimatedThemeWidget> {

  ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontSize: 13,
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: themeData,
      child: Scaffold(
        backgroundColor: themeData.brightness == Brightness.light ? Colors.white : Colors.black,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Animated Theme',
              style: themeData.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if(themeData.brightness == Brightness.light){
                    themeData = ThemeData(
                      brightness: Brightness.dark,
                      textTheme: const TextTheme(
                          titleMedium: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    );
                  }else{
                    themeData = ThemeData(
                      brightness: Brightness.light,
                      textTheme: const TextTheme(
                          titleMedium: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    );
                  }
                });
              },
              child: const Text('Animate Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
