import 'package:flutter/material.dart';
import 'package:movie_sreaming/widget/Dot_animation.dart';

class Dot_row extends StatelessWidget {
  const Dot_row(
      {super.key, required this.list, required this.num, required this.num2});
  final List<dynamic> list;
  final int num, num2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            list.length - 1,
            (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Dot_Animation(active: num == index),
                )),
      ),
    );
  }
}
