import 'package:flutter/material.dart';

class GradientBorderButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final VoidCallback onPressed;

  const GradientBorderButton({
    Key? key,
    required this.child,
    required this.gradient,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(2), // Border thickness
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onPressed,
                borderRadius: BorderRadius.circular(6.0),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  child: Center(child: child),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
