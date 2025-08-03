import 'package:flutter/material.dart';

class VariableCard extends StatelessWidget {
  final Widget child;
  final double padding;

  const VariableCard({super.key, required this.child, this.padding = 8.0});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}
