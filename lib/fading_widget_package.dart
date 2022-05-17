import 'package:flutter/material.dart';

class FadingAnimation extends StatefulWidget {
  const FadingAnimation({
    Key? key,
    required this.child,
    required this.duration,
  }) : super(key: key);
  final Widget child;
  final int duration;

  @override
  State<FadingAnimation> createState() => _FadingAnimationState();
}

class _FadingAnimationState extends State<FadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: widget.duration,
        ));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _animation as dynamic,
      child: widget.child,
    );
  }
}
