import 'package:flutter/material.dart';
import 'package:movie_sreaming/contract.dart';
import 'package:movie_sreaming/model/category_items.dart';
import 'package:movie_sreaming/widget/Dot_row.dart';
import 'package:movie_sreaming/widget/Listcategory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var select_index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: Icon(
        Icons.movie,
        color: Colors.white,
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                child: ListTile(
                  subtitle: Text(
                    "Khoamini123",
                    style: normaltext,
                  ),
                  title: Text(
                    "Xin chào",
                    style: titletext,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.kym-cdn.com/entries/icons/original/000/048/516/Screenshot_2024-02-20_at_10.43.43_AM.jpg"),
                  ),
                ),
              ),
              Listcategory(
                list: categories,
                callbackAction: (value) => print(value.toString()),
              ),
              SizedBox(
                height: 140,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      select_index = value;
                    });
                  },
                  controller: PageController(viewportFraction: 0.8),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    var _scale = select_index == index ? 1.0 : 0.9;
                    return TweenAnimationBuilder(
                      curve: Curves.ease,
                      child: item(),
                      tween: Tween(begin: _scale, end: _scale),
                      duration: const Duration(microseconds: 1200),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: child,
                        );
                      },
                    );
                  },
                ),
              ),
              Dot_row(list: [1, 2, 3, 4, 5], num: select_index, num2: 0)
            ],
          ),
        ),
      ),
    ));
  }
}

class item extends StatelessWidget {
  const item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(color: primary_color),
    );
  }
}
