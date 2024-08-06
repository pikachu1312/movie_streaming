import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_sreaming/contract.dart';
import 'package:movie_sreaming/model/model_defaulttabcontroller.dart';
import 'package:movie_sreaming/screen/Facvorite.dart';
import 'package:movie_sreaming/screen/HomeScreen.dart';
import 'package:movie_sreaming/screen/SeacrhScreen.dart';
import 'package:movie_sreaming/screen/User.dart';

void main() {
  runApp(_MaterialApp());
}

class _MaterialApp extends StatelessWidget {
  const _MaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkmode,
      home: _Defaulttabcontroller(),
    );
  }
}

class _Defaulttabcontroller extends StatelessWidget {
  _Defaulttabcontroller({super.key});
  final Tab_getx getxController = Get.put(Tab_getx());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: ModelDefaulttabcontrollers.length,
        child: SafeArea(
            child: Scaffold(
          body: Obx(() => getxController.screen[getxController.index.value]),
          bottomNavigationBar: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Color(0xff373A40),
                  borderRadius: BorderRadius.circular(12)),
              height: 70,
              child: Obx(
                () {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        ModelDefaulttabcontrollers.length,
                        (value) => GestureDetector(
                              onTap: () {
                                getxController.index.value = value;
                              },
                              child: Container(
                                margin: value == getxController.index.value
                                    ? EdgeInsets.symmetric(horizontal: 18)
                                    : EdgeInsets.all(0),
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: value == getxController.index.value
                                        ? primary_color
                                        : Colors.transparent),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      ModelDefaulttabcontrollers[value]
                                          .iconData,
                                      size: 18,
                                      color: value == getxController.index.value
                                          ? Colors.white
                                          : Colors.white30,
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Visibility(
                                      visible:
                                          value == getxController.index.value
                                              ? true
                                              : false,
                                      child: Text(
                                          style: TextStyle(color: Colors.white),
                                          ModelDefaulttabcontrollers[value]
                                              .title),
                                    )
                                  ],
                                ),
                              ),
                            )),
                  );
                },
              )),
        )));
  }
}

class Tab_getx extends GetxController {
  var index = 0.obs;
  final List<Widget> screen = [
    HomeScreen(),
    SearchScreen(),
    Facvorite(),
    User()
  ];
}
