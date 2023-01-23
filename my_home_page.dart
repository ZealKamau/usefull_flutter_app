import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import "app_colors.dart" as AppColors;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.background,
        child: SafeArea(
            child: Scaffold(
          body: Column(children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      shadows: [Shadow(blurRadius: 2)],
                      Icons.menu,
                      color: Color.fromRGBO(43, 39, 39, 1),
                      size: 30.0,
                    ),
                    Row(
                      children: const [
                        Icon(
                          shadows: [Shadow(blurRadius: 2)],
                          Icons.search,
                          color: Color.fromARGB(255, 43, 39, 39),
                          size: 30.0,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          shadows: [Shadow(blurRadius: 2)],
                          Icons.notifications,
                          color: Color.fromARGB(255, 43, 39, 39),
                          size: 30.0,
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Popular Books",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            Container(
                height: 180,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.8),
                  itemCount: 5,
                  itemBuilder: (_, i) {
                    return Container(
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("Assets/yami.png"),
                            )));
                  },
                )
                )
          ]),
        )));
  }
}
