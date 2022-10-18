import 'package:flutter/material.dart';

class NeoBox extends StatelessWidget {
  final child;
  const NeoBox({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 1,
              spreadRadius: 1),
          BoxShadow(
              color: Colors.grey.shade600,
              offset: const Offset(4, 4),
              blurRadius: 1,
              spreadRadius: 1),
        ],
      ),
    );
  }
}
