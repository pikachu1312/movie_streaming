import 'package:flutter/material.dart';

typedef CallbackAction = void Function(String value);

class Listcategory extends StatelessWidget {
  const Listcategory(
      {super.key, required this.list, required this.callbackAction});
  final List<String> list;
  final CallbackAction callbackAction;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              callbackAction(list[index]);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Colors.white24,
                  )),
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                list[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
