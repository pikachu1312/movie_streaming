import 'package:flutter/material.dart';
import 'package:movie_sreaming/contract.dart';

class Dot_Animation extends StatelessWidget {
  const Dot_Animation({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(microseconds: 450),
        child: SizedBox(
          height: 4,
          width: active ? 20 : 4,
          child: Container(
            decoration:
                BoxDecoration(color: active ? primary_color : Colors.grey),
          ),
        ));
  }
}
