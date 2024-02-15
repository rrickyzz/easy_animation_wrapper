import 'package:flutter/material.dart';

class SlideVerticalAnimation extends StatefulWidget {
  /// widget to be wrapped by Slide Vertical Animation
  final Widget child;
  ///  defines an Offset for the animation starting point.
  final Offset startAt;
  ///  defines an Offset for the animation end point.
  final Offset endAt;
  /// creates custom controller for the slide animation 
  final AnimationController? controller;
  const SlideVerticalAnimation(
      {super.key,
      this.child = const SizedBox(),
      this.startAt = const Offset(0, 1.0),
      this.controller,
      this.endAt = Offset.zero});

  @override
  State<SlideVerticalAnimation> createState() =>
      _SlideUpVerticalAnimationWrapperState();
}

class _SlideUpVerticalAnimationWrapperState
    extends State<SlideVerticalAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = widget.controller ??
      AnimationController(
        duration: const Duration(milliseconds: 300),
        vsync: this,
      );
  late final Animation<Offset> offsetAnimation = Tween<Offset>(
    end: widget.endAt,
    begin: widget.startAt,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  @override
  void initState() {
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: offsetAnimation, child: widget.child);
  }
}
