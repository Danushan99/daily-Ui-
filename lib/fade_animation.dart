// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:ui_migration/pages/button.dart';



class FadeAnimation extends StatefulWidget {
  const FadeAnimation({ super.key });

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          AnimatedOpacity(
            opacity: _visible ? 1 : 0, 
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.orangeAccent,
            ),
          ),
          const SizedBox(height: 40),
          BorderedButton(text: "Show/Hide", onPress: () {
            setState(() {
              _visible = !_visible;
            });
          })
        ],
      ),
    );
  }
}